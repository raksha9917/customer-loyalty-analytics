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

| Stage | What Was Done | Purpose |
|------|---------------|---------|
| **Data Preparation** | Cleaned dataset, standardised variables, removed redundant columns, exported clean CSV | Ensure data quality, consistency, and reproducibility across Python and R workflows |
| **Exploratory Data Analysis** | Analysed distributions, correlations, and outliers across demographic and behavioural variables | Understand relationships between income, spending behaviour, and loyalty engagement |
| **Predictive Modelling** | Built multiple linear regression models and trained a pruned decision tree regressor | Identify key drivers of loyalty and evaluate predictive capability |
| **Customer Segmentation** | Applied K-Means clustering using income and spending features | Identify distinct customer groups for targeted marketing strategies |
| **Sentiment Analysis** | Cleaned review text, generated word frequencies and sentiment scores | Understand customer satisfaction drivers and identify product issues |

---

## 📊 Key Findings

| Insight Area | Finding | Business Meaning |
|-------------|---------|------------------|
| **Loyalty Drivers** | Income and spending behaviour explain ~83% of loyalty variation | Loyalty engagement is predictable and influenced by financial capacity |
| **Strongest Predictor** | Spending score has the strongest relationship with loyalty points | Customer behaviour matters more than demographics alone |
| **Customer Segments** | Five distinct groups identified through clustering | Marketing strategies can be tailored to specific behavioural profiles |
| **Customer Sentiment** | Reviews are mostly positive but highlight recurring quality concerns | Operational improvements could increase retention and satisfaction |


---

## 💡 Recommendations

- Introduce a **tiered loyalty programme** to reward high-value customers  
- Targeted Marketing: Use segmentation insights to personalise marketing campaigns  
- Operational Improvements: Address product quality and delivery concerns identified in reviews  
- Predictive Modelling: Integrate predictive models into CRM tools to forecast engagement  
- Analytical Imrpovements: Enrich future datasets with geographic and behavioural variables  

---

## 🛠 Tools & Technologies

| Category | Tools / Libraries | Role in Project |
|----------|------------------|-----------------|
| **Languages** | Python 🐍 , R 📈  | Used for modelling, statistical analysis, and visualisation |
| **Data Handling** | pandas, NumPy | Data cleaning, transformation, and preparation |
| **Visualisation** | matplotlib, seaborn | Exploratory analysis and results visualisation |
| **Modelling** | scikit-learn, statsmodels | Regression modelling, decision trees, clustering |
| **Text Analysis** | nltk, wordcloud | Sentiment analysis and review exploration |
| **Techniques Used** | Regression, Decision Trees, K-Means, NLP, EDA | Core analytical methods applied to answer business questions |


---

## 📁 Repository Structure

```
customer-loyalty-analytics/
│
├── data/
│   ├── turtle_reviews.csv
│   ├── turtle_reviews_clean.csv
│   └── metadata_turtle_games.txt
│
├── notebooks/
│   └── Turtle_Games_Python_Notebook.ipynb
│
├── scripts/
│   └── Turtle_Games_R_Analysis.R
│
├── reports/
│   └── Technical_Report.pdf
│
├── presentation/
│   └── Turtle_Games_Presentation.pptx
│
└── README.md
```



