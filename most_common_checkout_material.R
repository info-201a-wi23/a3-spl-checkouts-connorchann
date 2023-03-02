most_common <- names(sort(table(normal_data$MaterialType), decreasing = TRUE))[1]
cat("The most common checkout material type is", most_common, "\n")

# What is the most common checkout material type?
Audiobook