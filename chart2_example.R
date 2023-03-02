```{r, echo = FALSE, warning=FALSE, message=FALSE}

# Load necessary libraries
library(dplyr)
library(ggplot2)

# Read in the data
normal_data <- read.csv("file:///Users/connorchan/Library/Messages/Attachments/dd/13/00961DEA-54E7-47C6-84E3-697CD2A044EA/Normal_People_A3_Checkouts_by_Title.csv")

# Clean up variable names
colnames(normal_data) <- c("Usage_Class", "Checkout_Type", "Material_Type", "Checkout_Year", "Checkout_Month", "Checkout_Number")

# Filter for Books, Ebooks, and Audiobooks only
normal_data <- subset(normal_data, Material_Type %in% c("BOOK", "EBOOK", "AUDIOBOOK"))

# Group by Material_Type and Checkout_Year, and summarize by summing Checkout_Number
normal_data <- aggregate(Checkout_Number ~ Material_Type + Checkout_Year, data = normal_data, FUN = sum)

# Plot the data using ggplot2
ggplot(normal_data, aes(x = Checkout_Year, y = Checkout_Number, fill = Material_Type)) +
  geom_bar(stat = "identity") +
  labs(x = "Checkout Year", y = "Number of Checkouts", fill = "Material Type") +
  theme_minimal()

```