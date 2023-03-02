# Aggregate the data by month and calculate the sum of checkouts
month_data <- aggregate(Checkouts ~ CheckoutMonth, normal_data, sum)

# Order the months by the number of checkouts and select the first row
month_data[order(month_data$Checkouts, decreasing = TRUE),][1,]


library(lubridate) # Load the lubridate package
normal_data$Month <- month(normal_data$CheckoutDateTime) # Extract the month from the date
most_checkouts_month <- as.character(months(sort(table(normal_data$Month), decreasing = TRUE))[1])
cat("The month with the most checkouts is", most_checkouts_month, "\n")

# What month has the most checkouts?
May, with 1644 total checkouts