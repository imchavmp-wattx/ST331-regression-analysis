# Module 1: Simple Linear Regression - Exercises and Active Learning

## 1. Exercises (พร้อมเฉลย)

### Exercise 1.1: Conceptual Understanding
**Question:** Explain the difference between the population regression function (PRF) and the sample regression function (SRF). What is the primary goal of the Method of Least Squares?

**Solution 1.1:**
The **Population Regression Function (PRF)**, $E(Y|X) = \beta_0 + \beta_1 X$, describes the true, but unknown, relationship between $Y$ and $X$ for the entire population. The **Sample Regression Function (SRF)**, $\hat{Y} = \hat{\beta}_0 + \hat{\beta}_1 X$, is the estimated relationship derived from a sample of data. The SRF is used to estimate the PRF. The primary goal of the **Method of Least Squares** is to find the values of $\hat{\beta}_0$ and $\hat{\beta}_1$ that minimize the **Sum of the Squared Errors (SSE)**, which is the sum of the squared vertical distances between the observed $Y$ values and the estimated regression line.

### Exercise 1.2: Manual Calculation
A researcher collected data on the number of **Ice Cream Scoops Sold ($X$)** and the **Temperature in Celsius ($Y$)** over 4 days:

| $X$ (Scoops) | $Y$ (Temp) |
| :---: | :---: |
| 10 | 20 |
| 15 | 25 |
| 20 | 30 |
| 25 | 35 |

**Question:**
1.  Calculate the means $\bar{X}$ and $\bar{Y}$.
2.  Calculate the slope $\hat{\beta}_1$ and the intercept $\hat{\beta}_0$.
3.  Write down the estimated regression equation.

**Solution 1.2:**
1.  $\bar{X} = (10+15+20+25)/4 = 70/4 = 17.5$
    $\bar{Y} = (20+25+30+35)/4 = 110/4 = 27.5$
2.  $S_{XX} = (10-17.5)^2 + (15-17.5)^2 + (20-17.5)^2 + (25-17.5)^2 = 56.25 + 6.25 + 6.25 + 56.25 = 125$
    $S_{XY} = (10-17.5)(20-27.5) + (15-17.5)(25-27.5) + (20-17.5)(30-27.5) + (25-17.5)(35-27.5)$
    $S_{XY} = (-7.5)(-7.5) + (-2.5)(-2.5) + (2.5)(2.5) + (7.5)(7.5) = 56.25 + 6.25 + 6.25 + 56.25 = 125$
    $\hat{\beta}_1 = S_{XY} / S_{XX} = 125 / 125 = 1$
    $\hat{\beta}_0 = \bar{Y} - \hat{\beta}_1 \bar{X} = 27.5 - (1)(17.5) = 10$
3.  The estimated regression equation is: $\hat{Y} = 10 + 1 X$.

## 2. Active Learning Activity: "Predict the Price"

**Objective:** To apply the concept of SLR to a real-world scenario and practice data collection and model fitting.

**Activity:**
1.  **Form Groups:** Students form groups of 3-4 people.
2.  **Data Collection:** Each group selects a common product (e.g., used smartphones, used cars, houses in a specific area) and identifies one continuous predictor variable (e.g., age, mileage, square footage) that they believe influences the price.
3.  **Sample Data:** Each group collects 10 data points (Price and Predictor Variable) from online sources (e.g., classified ads, real estate websites).
4.  **Analysis (RStudio):**
    *   Input the data into R.
    *   Fit the SLR model: `lm(Price ~ Predictor)`.
    *   Interpret the coefficients ($\hat{\beta}_0$ and $\hat{\beta}_1$).
    *   Use the model to predict the price of a new, hypothetical item.
5.  **Presentation:** Each group presents their findings, including the data source, the estimated regression equation, and their interpretation of the results. The class discusses which predictor variable was the most effective.
