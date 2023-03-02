```{r, echo = FALSE, warning=FALSE, message=FALSE}

library(dplyr)
library(ggplot2)

# Load data
normal_data <- read.csv("file:///Users/connorchan/Library/Messages/Attachments/dd/13/00961DEA-54E7-47C6-84E3-697CD2A044EA/Normal_People_A3_Checkouts_by_Title.csv")

# Filter data for years 2019-2023 and calculate total checkouts by material type
material_counts <- normal_data %>%
  filter(CheckoutYear >= 2019 & CheckoutYear <= 2023) %>%
  group_by(MaterialType) %>%
  summarize(TotalCheckouts = sum(Checkouts))

# Create pie chart
ggplot(material_counts, aes(x = "", y = TotalCheckouts, fill = MaterialType)) +
  geom_bar(stat = "identity", width = 1) +
  coord_polar(theta = "y") +
  theme_void() +
  labs(title = "Material Type Breakdown of Checkouts (2019-2023)")

````