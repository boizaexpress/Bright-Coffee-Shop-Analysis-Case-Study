📌 ##Project Overview

> This project provides actionable business insights for the new CEO of Bright Coffee Shop. As a Junior Data Analyst, I have analyzed historical transactional data to identify revenue drivers, peak sales periods, and product performance trends to support strategic growth.



##🛠️ Tech Stack

> Planning: Miro (Data Flow & Architecture)

> Data Processing: Databricks (PySpark/SQL)

> Visualization: Microsoft Excel (Pivot Tables & Dashboards)

> Reporting: Microsoft PowerPoint



##📂 Repository Structure

> 📁 documentation/: Contains the Miro Architecture diagram.

> 📁 sql/: Includes the .sql files used for data transformation and grouping.

> 📁 data/: The processed dataset and Excel-based dashboards.

> 📁 presentation/: The final PowerPoint presentation for the CEO



##⚙️ Data Pipeline & Methodology

> Architecture: Designed a data flow from source (Excel) through ETL (Databricks) to storage.

> Processing: * Converted raw data to CSV and loaded it into Snowflake.Cleaned unit_price by handling decimal formatting (e.g., converting '3,1' to 3.1).

> Engineered a transaction_time_bucket column to group sales into 30-60 minute intervals.

> Calculated total_amount as Runit\_price \times transaction\_qtyR.

> Analysis: Exported transformed data to Excel to build pivot tables focusing on revenue per product type and peak sale times.



##📈 Key Business Questions Addressed

> Which product categories generate the highest revenue?

> What are the peak operating hours for the store?

> Which products are underperforming and require promotion?



##🚀 Recommendations

>Targeted Marketing: Launch campaigns during identified slow time slots to boost traffic.

>Inventory Optimization: Increase stock levels for high-volume, best-selling items.

>Loyalty Programs: Implement customer retention strategies based on peak time slot behaviors.
