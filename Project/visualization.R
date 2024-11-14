# Install the necessary packages
# install.packages("geodata")
# install.packages("sf")
# install.packages("dplyr")
# install.packages("ggplot2")
# install.packages("viridis")
# install.packages("tidyr")

# Load the libraries
library(geodata)
library(sf)
library(dplyr)
library(ggplot2)
library(viridis)
library(tidyr)

# Download the shapefile for India's states (level 1)
india_shp <- gadm(country = "India", level = 1, path = tempdir())

# Plot to ensure it's working
plot(st_geometry(india_shp))

# Load your CPI dataset
cpi_data <- df_clean

# Pivot the data for easier handling (if needed)
cpi_long <- cpi_data %>%
  pivot_longer(cols = starts_with("Andhra.Pradesh"):ends_with("Puducherry"), names_to = "State", values_to = "CPI")

# Group by Year, Sector, and State to calculate the yearly average CPI
cpi_yearly_avg <- cpi_long %>%
  group_by(Year, Sector, State) %>%
  summarize(average_CPI = mean(CPI, na.rm = TRUE)) %>%
  ungroup()

# Check the state names in the shapefile
unique(india_shp$NAME_1)

# Merge CPI data with the shapefile (assuming the state names align)
india_map <- india_shp %>%
  left_join(cpi_yearly_avg, by = c("NAME_1" = "State"))

# Function to plot CPI map by year and sector
plot_cpi_map <- function(year, sector) {
  # Filter CPI data for the selected year and sector
  cpi_year_sector <- cpi_yearly_avg %>%
    filter(Year == year & Sector == sector)
  
  # Merge CPI data for that year and sector with the shapefile
  india_map <- india_shp %>%
    left_join(cpi_year_sector, by = c("NAME_1" = "State"))  # Ensure 'NAME_1' in shapefile and 'State' in CPI data match
  
  # Plot the map
  ggplot(data = india_map) +
    geom_sf(aes(fill = average_CPI)) +  # Fill states based on average CPI
    scale_fill_gradient(low = "lightblue", high = "darkblue", na.value = "grey50") +  # Color scale
    labs(title = paste(sector, "CPI Across Indian States in", year),
         fill = "Average CPI") +  # Title and legend
    theme_minimal() +  # Minimal theme
    theme(axis.title = element_blank(), axis.text = element_blank(), axis.ticks = element_blank())  # Remove axis details
}

# Example: Plot the CPI map for Rural sector in 2020
plot_cpi_map(2020, "Rural")

# Define the unique years and sectors
years <- unique(cpi_yearly_avg$Year)
sectors <- unique(cpi_yearly_avg$Sector)

# Generate and save maps for each year and sector
for (year in years) {
  for (sector in sectors) {
    plot <- plot_cpi_map(year, sector)
    ggsave(filename = paste0("CPI_Map_", sector, "_", year, ".png"), plot = plot, width = 8, height = 6)
  }
}
