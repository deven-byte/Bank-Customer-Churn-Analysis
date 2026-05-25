# 🏦 Bank Customer Churn Analysis using Python, SQL & Power BI

An end-to-end data analytics project focused on identifying the key factors behind customer churn in a banking environment using Python for Exploratory Data Analysis (EDA), MySQL for business KPI analysis, and Power BI for interactive dashboard visualization.

---

## 📊 Dashboard Preview

![Dashboard](Dashboard/bank_churn_dashboard.png)

---

## 📁 Project Structure

```text
Bank-Customer-Churn-Analysis/
├── Dashboard/        # Power BI dashboard screenshot
├── Data/             # Cleaned dataset (CSV)
├── Notebooks/        # Python EDA notebook (.ipynb)
├── SQL/              # SQL queries file
└── README.md
```

---

## 🔍 Key Insights

- Overall customer churn rate stands at **20.37%**
- Customers with **3–4 banking products show extremely high churn rates (83–100%)**
- **Germany** records the highest churn rate at **32.44%**
- **Senior customers** are the most likely to churn at **44.65%**
- **Inactive members** churn at nearly **2×** the rate of active customers
- **Female customers** exhibit higher churn behavior (**25.07%**) compared to males (**16.46%**)

---

## 📈 Dashboard Features

- KPI cards for customer churn metrics
- Churn analysis by geography, gender, age group, and activity status
- Interactive slicers for dynamic filtering
- Customer retention funnel visualization
- Churn trend analysis by customer tenure
- Professional dashboard design with interactive filtering

---

## 🛠️ Tools & Technologies Used

| Tool | Purpose |
|------|---------|
| Python (Pandas, Matplotlib, Seaborn) | Data cleaning, EDA & visualization |
| MySQL | Business KPI & churn analysis queries |
| Power BI | Interactive dashboard & storytelling |

---

## 📂 Dataset Information

- Dataset contains **10,000 bank customers**
- Includes **11 customer-related features**

### Features Used
- CreditScore
- Geography
- Gender
- Age
- Tenure
- Balance
- NumOfProducts
- HasCrCard
- IsActiveMember
- EstimatedSalary
- Exited

### Target Variable
- `Exited = 1` → Customer churned
- `Exited = 0` → Customer retained

---

## 🧹 Data Analysis Workflow

### Python (EDA)
- Data cleaning & preprocessing
- Missing value handling
- Customer behavior analysis
- Churn trend analysis
- Data visualization using Seaborn & Matplotlib

### SQL Analysis
- KPI analysis queries
- Churn rate analysis
- Geography-based churn insights
- Customer segmentation queries

### Power BI Dashboard
- Interactive dashboard creation
- KPI cards & filters
- Customer churn visual analysis
- Business storytelling & insights

---

## 🚀 How to Run the Project

1. Clone this repository

```bash
git clone https://github.com/yourusername/Bank-Customer-Churn-Analysis.git
```

2. Open the Jupyter Notebook from the `Notebooks/` folder

3. Run the Python EDA notebook

4. Import `cleaned_churn_data.csv` into MySQL

5. Execute SQL queries from:

```text
SQL/Bank_Customer_Churn_Analysis.sql
```

6. Open the Power BI dashboard file from the `Dashboard/` folder

---

## 📌 Business Recommendations

- Improve retention strategies for inactive customers
- Focus customer engagement campaigns in Germany
- Increase product adoption among customers with fewer products
- Develop targeted retention programs for senior customers
- Monitor high-balance customers more closely

---

## 👤 Author

**Devendra Changra**  
📧 devendrachangra04@gmail.com  
🔗 LinkedIn: https://linkedin.com/in/devendra-changra  
💻 GitHub: https://github.com/deven-byte
