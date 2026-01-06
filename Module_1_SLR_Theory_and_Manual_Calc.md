# Module 1: Simple Linear Regression (SLR) - Theory and Manual Calculation

## 1. Introduction to Regression Analysis

Regression analysis is a powerful statistical tool used to model the relationship between a dependent variable (or response variable), denoted as $Y$, and one or more independent variables (or predictor variables), denoted as $X$. The primary goals are to understand how the response variable changes as the predictor variables change, and to predict the value of the response variable [1].

## 2. The Simple Linear Regression Model

The Simple Linear Regression (SLR) model involves only one independent variable and assumes a linear relationship. The model is expressed as:

$$
Y_i = \beta_0 + \beta_1 X_i + \epsilon_i
$$

Where:
*   $Y_i$: The value of the dependent variable for the $i$-th observation.
*   $X_i$: The value of the independent variable for the $i$-th observation.
*   $\beta_0$: The **Y-intercept**, representing the expected mean value of $Y$ when $X=0$.
*   $\beta_1$: The **slope**, representing the change in the mean value of $Y$ for a one-unit increase in $X$.
*   $\epsilon_i$: The **error term** (or residual), representing the difference between the actual and predicted value of $Y$. It is assumed to be normally distributed with a mean of zero and constant variance ($\epsilon_i \sim N(0, \sigma^2)$) [2].

## 3. Method of Least Squares

The goal of regression is to estimate the unknown parameters $\beta_0$ and $\beta_1$ from sample data. The **Method of Least Squares** is the most common technique, which minimizes the sum of the squared errors (SSE):

$$
\text{SSE} = \sum_{i=1}^{n} \epsilon_i^2 = \sum_{i=1}^{n} (Y_i - \hat{Y}_i)^2 = \sum_{i=1}^{n} (Y_i - (\hat{\beta}_0 + \hat{\beta}_1 X_i))^2
$$

By taking partial derivatives of the SSE with respect to $\hat{\beta}_0$ and $\hat{\beta}_1$ and setting them to zero, we derive the least squares estimators:

$$
\hat{\beta}_1 = \frac{\sum_{i=1}^{n} (X_i - \bar{X})(Y_i - \bar{Y})}{\sum_{i=1}^{n} (X_i - \bar{X})^2} = \frac{S_{XY}}{S_{XX}}
$$

$$
\hat{\beta}_0 = \bar{Y} - \hat{\beta}_1 \bar{X}
$$

## 4. Manual Calculation Example

Consider a small dataset of 5 observations relating **Study Hours ($X$)** to **Exam Score ($Y$)**:

| $i$ | $X_i$ (Hours) | $Y_i$ (Score) |
| :---: | :---: | :---: |
| 1 | 2 | 60 |
| 2 | 3 | 75 |
| 3 | 5 | 80 |
| 4 | 6 | 90 |
| 5 | 4 | 85 |

**Step 1: Calculate the means ($\bar{X}$ and $\bar{Y}$)**
*   $\sum X_i = 2+3+5+6+4 = 20$
*   $\bar{X} = 20 / 5 = 4$
*   $\sum Y_i = 60+75+80+90+85 = 390$
*   $\bar{Y} = 390 / 5 = 78$

**Step 2: Calculate $S_{XX}$ and $S_{XY}$**

| $i$ | $X_i$ | $Y_i$ | $X_i - \bar{X}$ | $Y_i - \bar{Y}$ | $(X_i - \bar{X})^2$ | $(X_i - \bar{X})(Y_i - \bar{Y})$ |
| :---: | :---: | :---: | :---: | :---: | :---: | :---: |
| 1 | 2 | 60 | -2 | -18 | 4 | 36 |
| 2 | 3 | 75 | -1 | -3 | 1 | 3 |
| 3 | 5 | 80 | 1 | 2 | 1 | 2 |
| 4 | 6 | 90 | 2 | 12 | 4 | 24 |
| 5 | 4 | 85 | 0 | 7 | 0 | 0 |
| **Sum** | **20** | **390** | **0** | **0** | **10** ($S_{XX}$) | **65** ($S_{XY}$) |

**Step 3: Calculate $\hat{\beta}_1$ (Slope)**
$$
\hat{\beta}_1 = \frac{S_{XY}}{S_{XX}} = \frac{65}{10} = 6.5
$$

**Step 4: Calculate $\hat{\beta}_0$ (Intercept)**
$$
\hat{\beta}_0 = \bar{Y} - \hat{\beta}_1 \bar{X} = 78 - (6.5)(4) = 78 - 26 = 52
$$

**Step 5: State the Estimated Regression Equation**
The estimated regression line is:
$$
\hat{Y} = 52 + 6.5 X
$$

**Interpretation:**
*   **Intercept ($\hat{\beta}_0 = 52$):** A student who studies 0 hours is predicted to score 52.
*   **Slope ($\hat{\beta}_1 = 6.5$):** For every additional hour of study, the predicted exam score increases by 6.5 points.

## References
[1]: [Introduction to Regression Analysis - Investopedia](https://www.investopedia.com/terms/r/regression.asp)
[2]: [Assumptions of Linear Regression - Statistics By Jim](https://statisticsbyjim.com/regression/assumptions-linear-regression-analysis/)
