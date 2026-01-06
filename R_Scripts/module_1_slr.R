# R Script for Module 1: Simple Linear Regression (SLR)

# 1. Data Entry and Preparation
study_hours <- c(2, 3, 5, 6, 4)
exam_score <- c(60, 75, 80, 90, 85)
exam_data <- data.frame(study_hours, exam_score)
print(exam_data)

# 2. Fitting the Simple Linear Regression Model
slr_model <- lm(exam_score ~ study_hours, data = exam_data)

# 3. Analyzing the Model Output
summary(slr_model)

# 4. Visualizing the Regression Line
# Save the plot to a file (optional, but good practice for documentation)
png("slr_plot.png")
plot(exam_score ~ study_hours, data = exam_data,
     main = "Exam Score vs. Study Hours",
     xlab = "Study Hours (X)",
     ylab = "Exam Score (Y)",
     pch = 19, col = "blue")
abline(slr_model, col = "red", lwd = 2)
dev.off()

# 5. Making a Prediction
# Predict the score for a student who studies 4.5 hours
new_data <- data.frame(study_hours = 4.5)
prediction <- predict(slr_model, newdata = new_data)
print(paste("Predicted score for 4.5 hours of study:", round(prediction, 2)))
