# Aggregate the data by year and calculate the sum of checkouts
Checkout_Year <- aggregate(Checkouts ~ CheckoutYear, normal_data, sum)

# Order the years by the number of checkouts and select the first row
Checkout_Year[order(Checkout_Year$Checkouts),][1,]

# What year has the least amount of checkouts?
2023, 151 checkouts