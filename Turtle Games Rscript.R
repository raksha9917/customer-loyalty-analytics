## LSE Data Analytics Online Career Accelerator 
# DA301:  Advanced Analytics for Organisational Impact

###############################################################################

# Assignment 5 scenario
## Turtle Games’s sales department has historically preferred to use R when performing 
## sales analyses due to existing workflow systems. As you’re able to perform data analysis 
## in R, you will perform exploratory data analysis and present your findings by utilising 
## basic statistics and plots. You'll explore and prepare the data set to analyse sales per 
## product. The sales department is hoping to use the findings of this exploratory analysis 
## to inform changes and improvements in the team. (Note that you will use basic summary 
## statistics in Module 5 and will continue to go into more detail with descriptive 
## statistics in Module 6.)

################################################################################

## Assignment 5 objective
## Load and wrangle the data. Use summary statistics and groupings if required to sense-check
## and gain insights into the data. Make sure to use different visualisations such as scatterplots, 
## histograms, and boxplots to learn more about the data set. Explore the data and comment on the 
## insights gained from your exploratory data analysis. For example, outliers, missing values, 
## and distribution of data. Also make sure to comment on initial patterns and distributions or 
## behaviour that may be of interest to the business.

################################################################################

# Module 5 assignment: Load, clean and wrangle data using R

## It is strongly advised that you use the cleaned version of the data set that you created and 
##  saved in the Python section of the course. Should you choose to redo the data cleaning in R, 
##  make sure to apply the same transformations as you will have to potentially compare the results.
##  (Note: Manual steps included dropping and renaming the columns as per the instructions in module 1.
##  Drop ‘language’ and ‘platform’ and rename ‘remuneration’ and ‘spending_score’) 

## 1. Open your RStudio and start setting up your R environment. 
## 2. Open a new R script and import the turtle_review.csv data file, which you can download from 
##      Assignment: Predicting future outcomes. (Note: You can use the clean version of the data 
##      you saved as csv in module 1, or, can manually drop and rename the columns as per the instructions 
##      in module 1. Drop ‘language’ and ‘platform’ and rename ‘remuneration’ and ‘spending_score’) 
## 3. Import all the required libraries for the analysis and view the data. 
## 4. Load and explore the data.
##    - View the head the data.
##    - Create a summary of the new data frame.
## 5. Perform exploratory data analysis by creating tables and visualisations to better understand 
##      groupings and different perspectives into customer behaviour and specifically how loyalty 
##      points are accumulated. Example questions could include:
##    - Can you comment on distributions, patterns or outliers based on the visual exploration of the data?
##    - Are there any insights based on the basic observations that may require further investigation?
##    - Are there any groupings that may be useful in gaining deeper insights into customer behaviour?
##    - Are there any specific patterns that you want to investigate
## 6. Create
##    - Create scatterplots, histograms, and boxplots to visually explore the loyalty_points data.
##    - Select appropriate visualisations to communicate relevant findings and insights to the business.
## 7. Note your observations and recommendations to the technical and business users.

###############################################################################

# Your code here.

# 1. Load and explore the data

# Import the necessary libraries.
library('tidyverse')

# Import the dataset.
data <- read.csv('turtle_reviews_clean.csv', header = TRUE) # Using the cleaned DataFrame.

# Print the data frame (opens in source tab).
View(data)

# View and explore the dataset.
head(data)
dim(data)
# Checking for missing values.
sum(is.na(data))

# 2. View the descriptive statistics.
# View first ten entries and view variable types.
as_tibble(data)

# Different view of each variable.
glimpse(data)

# Summary of the DataFrame.
summary(data)

# 3. Histograms
  # - Histogram to view Loyalty points by count.
ggplot(data, aes(x = loyalty)) +
  geom_histogram(bins = 30, fill = "skyblue", color = "black") +
  theme_minimal()
ggsave("loyalty_histogram.png")

# Histogram Observations & Insights: 
# - The graph is right-skewed: progressively fewer customers with higher loyalty points.
# - Most customers are not actively earning or redeeming points.
# - A smaller group of “high scorers” exists on the right tail, representing highly engaged or valuable customers.
# What this means for Turtle Games: For the business, this highlights an opportunity: design campaigns or incentives to move
       # more customers from the low-points group into the mid-to-high range, potentially increasing overall engagement and spend.

# 4. Boxplots
  # - Boxplot to view loyalty points by gender.
ggplot(data, aes(x = gender, y = loyalty)) +
  geom_boxplot(fill = "lightgreen") +
  theme_minimal()
ggsave("loyalty_vs_GenderBoxplot.png")

  # - Boxplot to view loyalty points by education.
ggplot(data, aes(x = education, y = loyalty)) +
  geom_boxplot(fill = "lightpink") +
  theme_minimal()
ggsave("loyalty_vs_EducationBoxplot.png")

# 5. Scatterplots
  # - Scatterplot to view loyalty points by income(pay).
ggplot(data, aes(x = pay, y = loyalty)) +
  geom_point(color = "steelblue") +
  geom_smooth(method = "lm", color = "red") +
  theme_minimal()
ggsave("loyalty_vs_PayScatter.png")

  # -Scatterplot to view loyalty points by customer spend.
ggplot(data, aes(x = spend, y = loyalty)) +
  geom_point(color = "blue") +
  geom_smooth(method = "loess", color = "red") +
  theme_minimal()
ggsave("loyalty_vs_spendScatter.png")

# 6. Save top/bottom 20 loyalty points
top20 <- data %>% arrange(desc(loyalty)) %>% head(20)
bottom20 <- data %>% arrange(loyalty) %>% head(20)

# Save data as CSV files for reference.
write_csv(top20, "top20_positive.csv")
write_csv(bottom20, "bottom20_negative.csv")

# Print the dataframe (opens in source tab).
#View(top20)
#View(bottom20)


###############################################################################
###############################################################################

# Assignment 6 scenario

## In Module 5, you were requested to redo components of the analysis using Turtle Games’s preferred 
## language, R, in order to make it easier for them to implement your analysis internally. As a final 
## task the team asked you to perform a statistical analysis and create a multiple linear regression 
## model using R to predict loyalty points using the available features in a multiple linear model. 
## They did not prescribe which features to use and you can therefore use insights from previous modules 
## as well as your statistical analysis to make recommendations regarding suitability of this model type,
## the specifics of the model you created and alternative solutions. As a final task they also requested 
## your observations and recommendations regarding the current loyalty programme and how this could be 
## improved. 

################################################################################

## Assignment 6 objective
## You need to investigate customer behaviour and the effectiveness of the current loyalty program based 
## on the work completed in modules 1-5 as well as the statistical analysis and modelling efforts of module 6.
##  - Can we predict loyalty points given the existing features using a relatively simple MLR model?
##  - Do you have confidence in the model results (Goodness of fit evaluation)
##  - Where should the business focus their marketing efforts?
##  - How could the loyalty program be improved?
##  - How could the analysis be improved?

################################################################################

## Assignment 6 assignment: Making recommendations to the business.

## 1. Continue with your R script in RStudio from Assignment Activity 5: Cleaning, manipulating, and 
##     visualising the data.
## 2. Load and explore the data, and continue to use the data frame you prepared in Module 5.
## 3. Perform a statistical analysis and comment on the descriptive statistics in the context of the 
##     review of how customers accumulate loyalty points.
##  - Comment on distributions and patterns observed in the data.
##  - Determine and justify the features to be used in a multiple linear regression model and potential
##.    concerns and corrective actions.
## 4. Create a Multiple linear regression model using your selected (numeric) features.
##  - Evaluate the goodness of fit and interpret the model summary statistics.
##  - Create a visual demonstration of the model
##  - Comment on the usefulness of the model, potential improvements and alternate suggestions that could 
##     be considered.
##  - Demonstrate how the model could be used to predict given specific scenarios. (You can create your own 
##     scenarios).
## 5. Perform exploratory data analysis by using statistical analysis methods and comment on the descriptive 
##     statistics in the context of the review of how customers accumulate loyalty points.
## 6. Document your observations, interpretations, and suggestions based on each of the models created in 
##     your notebook. (This will serve as input to your summary and final submission at the end of the course.)

################################################################################
# Set Directory
getwd()
setwd('/Users/rakshanama/Desktop/r_files')

# Your code here.
library(tidyverse)

# Using the same dataframe from assignment 5
# Import the dataset.
data <- read.csv('turtle_reviews_clean.csv', header = TRUE)

# Explore structure
summary(data)
dim(data)
str(data)

# ---- Insights ----
# The dataset has 2000 rows and 10 columns.
# Numeric variables of interest: age, pay, spend, loyalty.
# loyalty is our target variable.
# Categorical/text fields (gender, education, review, summary) 
# are excluded from MLR as we’re focusing on numeric predictors.


# ----------------- Exploratory Data Analysis -----------------
# Import the psych package.
library(psych)

# Focus on numeric variables
data_num <- data %>% select(age, pay, spend, loyalty)

# Descriptive statistics
describe(data_num)

# ---- Insights ----
# Age: mean 39.5, median 38 → most customers are 18–40. Slight right skew (older customers less common).
# Pay: mean 48.1, median 47.1, range 12.3–112.3 → spread income levels, slight right skew (some high earners).
# Spend: mean=median=50 → symmetric distribution, wide spread, good predictor.
# Loyalty: mean 1578, median 1276 → right skewed with extreme outliers (max 6847).


# Histogram of loyalty points
ggplot(data, aes(x = loyalty)) +
  geom_histogram(bins = 30, fill = "skyblue", color = "black") +
  theme_minimal() +
  labs(title = "Distribution of Loyalty Points", x = "Loyalty Points", y = "Count")
ggsave("hist_loyalty.png")

# ---- Histogram Insights ----
# Loyalty points histogram: most customers earn between 1000–2000 points.
# A small number reach 5000+ → creates a long right tail.

# Boxplot to check for outliers
ggplot(data, aes(y = loyalty)) +
  geom_boxplot(fill = "orange") +
  theme_minimal() +
  labs(title = "Boxplot of Loyalty Points")
ggsave("boxplot_loyalty.png")

# ---- Boxplot Insights ----
# Boxplot shows extreme high outliers (top users with >6000 points).
# Median is ~1276, confirming most customers are moderate earners of loyalty.

# Correlation Matrix
png("correlation_matrix.png", width=2400, height=2000, res=300)
corPlot(data_num,
        cex = 1.2,             
        numbers = TRUE,        
        show.legend = TRUE,    
        zlim = c(-1, 1),       
        stars = FALSE,         
        main = "Correlation Matrix",
        digits = 2)
dev.off()
# ---- Correlation Matrix Insights ----
# Correlations:
# Strongest positive correlation: spend and loyalty (0.67) 
      # - indicating higher spending customers are significantly more loyal
# Moderate positive correlation: pay and loyalty (0.62)
      # - suggesting customers with higher payment values exhibit greater loyalty
# Negative correlation: age and spend (-0.22)
      # - showing younger customers tend to spend more than older customers
# Pay-spend-loyalty triangle forms a reinforcing cycle:
      # - while age operates independently with minimal impact on loyalty
# Spending is the strongest loyalty driver (0.67).

# ----------------- Multiple Linear Regression -----------------
# Model A
modelA <- lm(loyalty ~ age + pay, data = data)
summary(modelA)

# Model B
modelB <- lm(loyalty ~ age + pay + spend, data = data)
summary(modelB)

# Model C (final, simplified)
modelC <- lm(loyalty ~ pay + spend, data = data)
summary(modelC)

# ---- MLR Insights ----
# Model A (age + pay): weak, Adj R² low (0.38). Age not significant.
# Model B (+spend): large jump, Adj R² ~0.84. Spend is highly significant (p<0.001).
# Model C (pay + spend): final, Adj R² ~0.83. This combination is highly significant (p<0.001). 
                      # - Model C is a simplified model, that excludes weak predictor age.

# ----------------- Visual Demonstrations -----------------
# Scatterplot with regression line
png("scatter_spend_loyalty.png", width=800, height=600)
ggplot(data, aes(x = spend, y = loyalty))+
  geom_point(alpha = 0.6, colour = "blue") +
  geom_smooth(method = "lm", se = TRUE, color = "red") +
  theme_minimal() +
  labs(title = "Spending Score vs Loyalty Points")
dev.off()

# ---- Scatterplot Insights ----
# Clear upward trend: higher spending scores predict higher loyalty balances.
# Customers with spend <20 rarely exceed 1000 loyalty points,
# while spend >80 often links to 3000+ loyalty points.

# Residual plot for Model C
resid_df <- data.frame(fitted = fitted(modelC),residuals = resid(modelC))

png("residuals_modelC.png", width=800, height=600)
ggplot(resid_df, aes(x = fitted, y = residuals)) +
  geom_point(alpha = 0.6, colour = "orange") +
  geom_hline(yintercept = 0, linetype = "dashed") +
  theme_minimal() +
  labs(title = "Residuals vs Fitted (Model C)", x = "Fitted Values", y = "Residuals")
dev.off()

# ---- Residual Plot Insights ----
# Residuals centered at 0 → model unbiased overall.
    # - regression model is unbiased — on average, it gets predictions right.
# Spread increases at high fitted values due to outliers (super-users).
    # - For “normal” customers (~1000–2000 points), the model predicts fairly well. For extreme high-loyalty customers, the model is much less reliable.
# Suggests heteroscedasticity; transformation (e.g., log(loyalty)) could help.
    # - Re-run the regression with log(loyalty) as the dependent variable, the model might fit better and handle outliers. 
    # - But even without the regression with log(loyalty), the model provides strong business insights.

# ----------------- Model Performance -----------------
adj_r2 <- summary(modelC)$adj.r.squared
preds <- fitted(modelC)
actuals <- data$loyalty
rmse <- sqrt(mean((actuals - preds)^2))
mae  <- mean(abs(actuals - preds))

cat("Model C Performance:\n")
cat("Adjusted R²:", round(adj_r2, 3), "\n")
cat("RMSE:", round(rmse, 2), "\n")
cat("MAE:", round(mae, 2), "\n")

# MODEL C PERFORMANCE INTERPRETATION
# Model: loyalty ~ pay + spend
# ================================
# Adjusted R² = 0.827
# - 82.7% of variance in loyalty is explained by pay and spend
# - Accounts for number of predictors (avoids inflation from adding variables)
# - High value indicates strong model fit

# RMSE = 533.74
# - Average prediction error is ~534 loyalty units
# - Penalizes larger errors more heavily (squared differences)
# - Lower is better; interpret relative to loyalty scale range

# MAE = 414.83
# - Average absolute prediction error is ~415 loyalty units
# - Treats all errors equally (not squared)
# - More robust to outliers than RMSE
# - Lower MAE vs RMSE suggests some larger outliers present

# OVERALL: Strong explanatory power with moderate prediction errors
  # - The model performs well at explaining the relationship between pay, spend, and loyalty (high Adjusted R²), 
  # - but the prediction errors suggest checking whether the scale of these errors is acceptable for the specific 
  # - business context and whether there might be outliers affecting the RMSE


# ----------------- Predictions -----------------
# Example scenario: hypothetical new customer
scenario <- data.frame(age = 30, pay = 15.00, spend = 80)
predictTest = predict(modelC, newdata = scenario, interval = 'confidence')

# Print the object.
predictTest

# ---------------- Results ----------------
# Fit (1440.803): This is the predicted loyalty score for a customer with pay = 15 and spend = 80.
# Lwr (1391.734): Lower bound of the 95% confidence interval. The model is 95% confident that the mean loyalty
              # score with these characteristics is above this value.
# Upr(1489.871): Upper bound of the 95% confidence interval. The model is 95% confident that the true mean loyalty
              # score with these characteristics is below this value.
# Practical Meaning: For customers who pay £15.00 and spend 80 units, your model predicts their loyalty score will be 
              # pproximately 1441, with 95% confidence that the true average loyalty for similar customers falls between 1392 and 1490

# ---------------- Final Business Insights -----------------
# The dataset covers 2,000 Turtle Games customers with demographic and behavioural features.
#
# Loyalty points are highly variable and right-skewed: most customers earn ~1,200–1,500 points, 
# while a small group of super-users reach over 6,000.
#
# Age is not an important factor — younger and older customers show similar loyalty behaviours.
#
# Pay (income) has a moderate effect: higher earners tend to accumulate more points, 
# but not as strongly as spending.
#
# Spending score is the dominant predictor, showing a strong positive correlation with loyalty. 
# Higher spending directly translates into higher loyalty balances.
#
# The final multiple linear regression model, using pay and spending score, 
# achieved an Adjusted R² of 0.827, meaning it explains over 82% of the variation in loyalty points.
#
# Model performance is excellent, with relatively low error compared to the mean loyalty balance, 
# making it a reliable predictive tool.
#
# Marketing focus:
# - Retain and reward high spenders, who are strongly linked to high loyalty.
# - Encourage moderate spenders to increase activity with targeted campaigns and offers.
#
# Programme improvements: introduce rewards for engagement beyond spending 
# (e.g., referrals, reviews, platform activity).
#
# Analytical improvements: integrate categorical features and behavioural variables 
# to refine segmentation and predictions.


###############################################################################
###############################################################################


