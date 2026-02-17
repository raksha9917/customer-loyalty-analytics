# 🐢 Predicting Customer Loyalty at Turtle Games
End-to-end customer analytics project combining Python, R, machine learning, clustering, and NLP to understand and predict customer loyalty.
The analysis identifies key behavioural drivers, segments customers, and translates insights into actionable marketing and customer retention strategies.

---

## 📌 Project Overview

This project analyses customer behaviour, loyalty engagement, and review sentiment for Turtle Games, a global retailer of books, board games, video games, and toys.

The aim is to understand what drives customer loyalty, segment customers for targeted marketing, and evaluate whether loyalty points can be reliably predicted using data science techniques.

The analysis combines statistical modelling, machine learning, clustering, and natural language processing to produce actionable business insights that can support marketing strategy, customer retention, and sales growth.

---

## 🎯 Business Objectives

- Understand how customers accumulate loyalty points  
- Identify customer segments for targeted marketing  
- Analyse customer reviews to evaluate satisfaction and pain points
- Determine whether loyalty engagement can be predictedfrom behavioural data 
- Provide strategic recommendations to improve retention and sales

---

## 📂 Dataset

The dataset contains **2,000 customer records** from Turtle Games, combining demographic, behavioural, and review data.

### Customer Attributes
- **Gender** – male or female  
- **Age** – customer age in years  
- **Remuneration (k£)** – annual income in thousands of pounds  
- **Education** – customer education level

### Behavioural Variables
- **Spending Score (1–100)** – a behavioural score assigned by Turtle Games based on purchasing patterns and spending behaviour  
- **Loyalty Points** – reward points accumulated by the customer through engagement and purchases  
- **Product** – identifier of the product purchased  
- **Platform** – purchase channel  

### Textual Data
- **Review** – full customer review text  
- **Summary** – short review headline

The dataset was cleaned and standardised before analysis, with redundant columns removed and variables renamed for easier modelling.

---

## 🔎 Analytical Approach

### Data Preparation
- Cleaned and validated the dataset in Python  
- Standardised column names and removed redundant variables  
- Exported a cleaned dataset to ensure reproducibility across Python and R

### Exploratory Data Analysis
- Examined distributions, skewness, and correlations  
- Investigated relationships between income, spending behaviour, and loyalty  
- Explored how demographic factors relate to engagement

### Predictive Modelling
- Built **multiple linear regression models** to identify key loyalty drivers  
- Trained a **Decision Tree Regressor** with pruning to improve interpretability  
- Evaluated model performance using train–test splits and diagnostic metrics

### Customer Segmentation
- Applied **K-Means clustering** to identify customer groups  
- Used Elbow and Silhouette methods to determine optimal cluster count  
- Developed behavioural customer personas from spending and income patterns

### Sentiment Analysis
- Cleaned and tokenised customer reviews  
- Generated word frequencies and visualisations  
- Calculated sentiment polarity to identify drivers of satisfaction and dissatisfaction

---

## 📊 Key Findings

- Income and spending behaviour jointly explain **~83% of loyalty variation**  
- Spending score is the strongest predictor of loyalty engagement  
- Five distinct customer segments emerged with clear marketing implications  
- Reviews show strong positive sentiment overall, but **product quality issues** appear repeatedly in negative feedback  

---

## 💡 Recommendations

- Introduce a **tiered loyalty programme** to reward high-value customers  
- Targeted Marketing: Use segmentation insights to personalise marketing campaigns  
- Operational Improvements: Address product quality and delivery concerns identified in reviews  
- Predictive Modelling: Integrate predictive models into CRM tools to forecast engagement  
- Analytical Imrpovements: Enrich future datasets with geographic and behavioural variables  

---

## 🛠 Tools & Technologies

### Languages
- Python 🐍  
- R  📈

### Python Libraries
- Pandas  
- NumPy  
- Matplotlib  
- Seaborn  
- Scikit-learn  
- statsmodels  
- NLTK 
- wordcloud  

### Techniques
- Multiple Linear Regression  
- Decision Tree Regression  
- K-Means Clustering  
- Sentiment Analysis (NLP)  
- Exploratory Data Analysis  

---
