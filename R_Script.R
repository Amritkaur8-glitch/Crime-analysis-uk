library(dplyr)
library(ggplot2)
library(readr)

files <- list.files(path = "C:/Users/Amrit/Desktop/data set s", 
                    pattern = "*.csv", 
                    full.names = TRUE, 
                    recursive = TRUE)

crime_data <- files %>% lapply(read_csv) %>% bind_rows()

crime_clean <- crime_data %>%
  filter(!is.na(`Crime type`)) %>%
  select(Month, `Crime type`, `LSOA name`)

monthly_trend <- crime_clean %>%
  group_by(Month) %>%
  summarise(total = n())

top_crimes <- crime_clean %>%
  group_by(`Crime type`) %>%
  summarise(total = n()) %>%
  arrange(desc(total))

ggplot(monthly_trend, aes(x = Month, y = total, group = 1)) +
  geom_line(color = "steelblue", linewidth = 1) +
  geom_point(color = "steelblue", size = 2) +
  labs(title = "City of London Crime Trend (May 2025 - May 2026)", 
       x = "Month", 
       y = "Total Crimes") +
  theme_minimal() +
  theme(axis.text.x = element_text(angle = 45, hjust = 1))

ggplot(top_crimes, aes(x = reorder(`Crime type`, total), y = total)) +
  geom_col(fill = "darkorange") +
  coord_flip() +
  labs(title = "Crime Types in City of London (Last 12 Months)", 
       x = "Crime Type", 
       y = "Total Incidents") +
  theme_minimal()
