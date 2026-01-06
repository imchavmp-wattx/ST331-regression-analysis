# Module 1: Simple Linear Regression (SLR) - RStudio Practical Guide

## 1. Introduction to R for Regression

R is a powerful, open-source programming language and environment widely used for statistical computing and graphics. RStudio is an integrated development environment (IDE) that makes working with R easier and more efficient [1]. For regression analysis, the core function we will use is `lm()`, which stands for "linear model."

## 2. Data Entry and Preparation

We will use the same small dataset from the manual calculation example, relating **Study Hours** to **Exam Score**.

| Study Hours ($X$) | Exam Score ($Y$) |
| :---: | :---: |
| 2 | 60 |
| 3 | 75 |
| 5 | 80 |
| 6 | 90 |
| 4 | 85 |

The following R code creates a data frame named `exam_data`:

```R
# Create vectors for the data
study_hours <- c(2, 3, 5, 6, 4)
exam_score <- c(60, 75, 80, 90, 85)

# Combine into a data frame
exam_data <- data.frame(study_hours, exam_score)

# View the data
print(exam_data)
```

## 3. Fitting the Simple Linear Regression Model

The `lm()` function is used to fit the model. The syntax is `lm(dependent_variable ~ independent_variable, data = data_frame)`.

```R
# Fit the SLR model
slr_model <- lm(exam_score ~ study_hours, data = exam_data)
```

## 4. Analyzing the Model Output

The `summary()` function provides a detailed statistical report of the fitted model, including the estimated coefficients, standard errors, t-statistics, p-values, and measures of model fit like $R^2$.

```R
# View the model summary
summary(slr_model)
```

**Expected Output Interpretation:**

| Term | Estimate | Interpretation | Manual Calculation Result |
| :--- | :--- | :--- | :--- |
| **(Intercept)** | 52.00 | The predicted score when study hours are zero. | $\hat{\beta}_0 = 52$ |
| **study\_hours** | 6.50 | The predicted increase in score for every one-hour increase in study time. | $\hat{\beta}_1 = 6.5$ |

The R output will confirm the manual calculations: $\hat{Y} = 52 + 6.5 X$.

## 5. Visualizing the Regression Line

It is crucial to visualize the data and the fitted line to assess the model's fit.

```R
# Plot the data points
plot(exam_score ~ study_hours, data = exam_data,
     main = "Exam Score vs. Study Hours",
     xlab = "Study Hours (X)",
     ylab = "Exam Score (Y)",
     pch = 19, col = "blue")

# Add the regression line to the plot
abline(slr_model, col = "red", lwd = 2)
```

## References
[1]: [RStudio: Integrated Development Environment for R](https://www.rstudio.com/)
[2]: [R Documentation: The lm function](https://stat.ethz.ch/R-manual/R-devel/library/stats/html/lm.html)
