least_common <- names(sort(table(normal_data$MaterialType), decreasing = FALSE))[1]
cat("The least common checkout material type is", least_common, "\n")

# What is the least common material type?
Book