# Load the dataset
normal_data <- read.csv("file:///Users/connorchan/Library/Messages/Attachments/dd/13/00961DEA-54E7-47C6-84E3-697CD2A044EA/Normal_People_A3_Checkouts_by_Title.csv")


avg_checkouts <- mean(normal_data$Checkouts)

# Print the result
cat("The average number of checkouts is:", round(avg_checkouts, 2))

# What is the average number of checkouts between 2019 and 2023?
122.8106