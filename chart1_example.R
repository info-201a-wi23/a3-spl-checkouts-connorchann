```{r, echo = FALSE, warning=FALSE, message=FALSE}

# Load necessary libraries
library(dplyr)
library(ggplot2)

# Read in the data
normal_data <- read.csv("file:///Users/connorchan/Library/Messages/Attachments/dd/13/00961DEA-54E7-47C6-84E3-697CD2A044EA/Normal_People_A3_Checkouts_by_Title.csv")

# Clean up variable names
colnames(normal_data) <- c("Usage_Class", "Checkout_Type", "Material_Type", "Checkout_Year", "Checkout_Month", "Checkout_Number")

# Convert Checkout_Year and Checkout_Month to a single date variable
normal_data$Date <- as.Date(paste0(normal_data$Checkout_Year, "-", normal_data$Checkout_Month, "-01"))

# Filter for Books, Ebooks, and Audiobooks only
normal_data <- subset(normal_data, Material_Type %in% c("BOOK", "EBOOK", "AUDIOBOOK"))

# Group by Material_Type and Date, and summarize by summing Checkout_Number
normal_data <- aggregate(Checkout_Number ~ Material_Type + Date, data = normal_data, FUN = sum)

# Plot the data using ggplot2
ggplot(normal_data, aes(x = Date, y = Checkout_Number, color = Material_Type)) +
  geom_line() +
  labs(x = "Checkout Date", y = "Number of Checkouts", color = "Material Type") +
  scale_x_date(date_labels = "%Y-%m", date_breaks = "1 year") +
  theme_minimal()