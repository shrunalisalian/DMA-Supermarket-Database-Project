# 📊 **DMA Project: Customer Analytics & Data Management**  

**Skills:** SQL, MongoDB, Data Analytics, UML Modeling, Python, ETL  

---

## 🚀 **Project Overview**  
This project focuses on **Customer Data Management & Analytics**, utilizing both **SQL and NoSQL databases (MongoDB)** to handle structured and semi-structured data. The goal is to analyze **customer transactions, orders, and warehouse operations**, enabling businesses to:  

✅ **Improve customer segmentation & analytics**  
✅ **Optimize retail & warehouse operations**  
✅ **Integrate SQL & NoSQL for hybrid data storage**  
✅ **Visualize customer behavior & business insights**  

This project is **ideal for data engineering, business intelligence, and data science roles**, showcasing **ETL pipelines, SQL querying, and NoSQL database management**.  

---

## 🎯 **Key Components & Deliverables**  
1️⃣ **SQL Queries** – Advanced data retrieval & analysis (📄 `Queries_Final.sql`)  
2️⃣ **MongoDB Queries** – NoSQL operations for flexible data modeling (📄 `DMA_Project_MongoDB_Queries.txt`)  
3️⃣ **Python Analytics** – Data processing & visualization in Python (📄 `DMA_Project_Python_Analytics.ipynb`)  
4️⃣ **UML Diagram** – Database schema representation for system design (📄 `UML Diagram.pdf`)  

---

## 🏗 **Database Schema & UML Design**  
The project models **customer transactions, orders, employees, and warehouse management** using relational and NoSQL structures.  

📄 **Key Entities & Relationships:**  
- **Warehouse** – Stores products for online & retail sales  
- **RetailStore** – Physical stores managing employees & products  
- **Employee** – Workers across retail, warehouse, & delivery operations  
- **Product** – Items sold via online & retail platforms  
- **FinalOrder** – Represents completed transactions  
- **RegisteredUser** – Customers making online purchases  

📄 **Entity-Relationship Diagram (UML)**  
📌 **Find the complete UML design in:** [📂 `UML Diagram.pdf`](#)  

---

## 💾 **SQL Database & Queries**  
The **SQL component** focuses on **customer orders, product sales, and retail analytics** using:  
✔ **JOINs & Aggregations** – Customer behavior & order tracking  
✔ **Subqueries & Window Functions** – Sales trends & revenue forecasting  
✔ **Data Filtering & Grouping** – Analyzing purchase history & user segmentation  

📄 **Key SQL Queries:**  
✅ **Total Sales by Product**  
```sql
SELECT prod_name, SUM(finorder_totalprice) AS total_revenue 
FROM FinalOrder 
JOIN Order_Product ON FinalOrder.finorder_ID = Order_Product.finorder_ID 
JOIN Product ON Order_Product.prod_ID = Product.prod_ID 
GROUP BY prod_name 
ORDER BY total_revenue DESC;
```
✅ **Customer Purchase Frequency**  
```sql
SELECT user_ID, COUNT(finorder_ID) AS purchase_count 
FROM RegisteredUser 
JOIN FinalOrder ON RegisteredUser.user_ID = FinalOrder.finorder_ID 
GROUP BY user_ID 
ORDER BY purchase_count DESC;
```
📌 **Find all queries in:** [📂 `Queries_Final.sql`](#)  

---

## 🗄 **MongoDB NoSQL Implementation**  
The **MongoDB component** stores semi-structured customer data, allowing flexible analytics.  

📄 **Key MongoDB Operations:**  
✅ **Insert Customer Data**  
```javascript
db.mycustomers.insertOne({
    first_name: "John", 
    last_name: "Doe",
    age: 30,
    membership: "Premium"
});
```
✅ **Find Customers by Membership**  
```javascript
db.mycustomers.find({ membership: "Premium" }).pretty();
```
✅ **Sorting Customers by Last Name**  
```javascript
db.mycustomers.find().sort({ last_name: 1 });
```
📌 **Find the full set of queries in:** [📂 `DMA_Project_MongoDB_Queries.txt`](#)  

---

## 📊 **Python Analytics & Data Processing**  
The **Python notebook** (`DMA_Project_Python_Analytics.ipynb`) processes and visualizes customer data.  

📄 **Key Python Features:**  
✔ **ETL Pipeline** – Extracting data from SQL & NoSQL sources  
✔ **Data Cleaning & Transformation** – Handling missing values, type conversions  
✔ **Visualization of Key Metrics** – Sales trends, customer demographics  

✅ **Example: Customer Purchase Distribution**  
```python
import pandas as pd
import matplotlib.pyplot as plt

df = pd.read_csv("customer_orders.csv")
df['purchase_count'].hist(bins=10)
plt.xlabel("Number of Purchases")
plt.ylabel("Customer Count")
plt.title("Customer Purchase Frequency Distribution")
plt.show()
```

---

## 🔮 **Future Enhancements**  
🔹 **Automate ETL workflows** – Connect SQL & MongoDB into a unified pipeline  
🔹 **Deploy dashboards** – Create interactive BI dashboards with Power BI/Tableau  
🔹 **Machine Learning on Customer Data** – Predict customer churn & sales trends  

---

## 🎯 **Why This Project Stands Out for Data Engineering & Analytics Roles**  
✔ **Demonstrates SQL & NoSQL expertise** – Working with structured & unstructured data  
✔ **End-to-End Data Pipeline** – Covers extraction, transformation, storage, and analysis  
✔ **Combines Python, SQL, and MongoDB** – Practical experience with multiple data technologies  
✔ **Real-World Business Insights** – Customer analytics, sales trends, and operational efficiency  

---

## 🛠 **How to Run This Project**  
1️⃣ Clone the repo:  
   ```bash
   git clone https://github.com/shrunalisalian/customer-data-analytics.git
   ```
2️⃣ Install dependencies:  
   ```bash
   pip install pandas matplotlib pymongo
   ```
3️⃣ Run the Jupyter Notebook:  
   ```bash
   jupyter notebook DMA_Project_Python_Analytics.ipynb
   ```

---

## 📌 **Connect with Me**  
- **LinkedIn:** [Shrunali Salian](https://www.linkedin.com/in/shrunali-salian/)  
- **Portfolio:** [Your Portfolio Link](#)  
- **Email:** [Your Email](#)  

---
Collaborators: 
1. Shrunali Salian
2. Siddhartha Setty
