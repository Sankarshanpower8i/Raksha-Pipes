# Raksha Pipes Data Analysis

![Raksha Pipes](https://github.com/Sankarshanpower8i/Doctor-Fee-Prediction/assets/133600711/61b7a72a-7ea1-4e11-a9ab-5f551682b69a)

This project entails analyzing synthetic data related to Raksha Pipes, a company specializing in pipes and plumbing products. The dataset comprises information on customers, products, sales, employees, exports, manufacturing units, and warehouses. The objective is to derive insights into sales trends, product performance, and customer profiles to aid business decision-making.

## Folder Structure
| Files | Description |
|-------| ------------|
| **data_generation/** | Contains Python scripts for generating fake data relevant to Raksha Pipes operations. |
| **database_scripts/** | Includes SQL scripts for setting up the MySQL database schema and populating it with generated data. |
| **dashboard/** | Houses Power BI dashboard files or links for visualizing sales trends, product performance, and customer profiles. |
| **presentation/** | Stores the video recording of the project presentation, explaining each step in detail. |
| **images/** | Contains screenshots and visuals used in the README or other project documentation. |

## Table of Contents

- [Project Overview](#Project-Overview)
- [Data Generation](#data-generation)
- [Database Design](#database-design)
- [Dashboard Creation](#dashboard-creation)
- [Setup Instructions](#setup-instructions)
- [Presentation](#presentation)
- [Screenshots](#screenshots)

 

![Overview](https://github.com/Sankarshanpower8i/Doctor-Fee-Prediction/assets/133600711/1d4080f1-e3f2-46b4-8efb-14e692b3ddfc)



### **Project Overview**

- The Raksha Pipes Business Analyst Assignment involves analyzing data related to Raksha Pipes, a fictional pipe manufacturing company, to extract insights and assist in making informed business decisions.
- Objectives include streamlining operations, enhancing decision-making processes, and optimizing business strategies.
- Technologies utilized in this project include Python for data analysis and preprocessing, MySQL for database management, and Power BI for creating interactive dashboards.



### **Data Generation**

- This project utilizes Python scripts to generate realistic data for Raksha Pipes operations.
- The `data_generation/` folder contains Python scripts responsible for creating synthetic data.
- For example, the script `generate_data.py` generates data for various aspects such as product types, customer details, and sales information.

<pre><code>
# Create Faker instance
fake = faker.Faker()

# Function to generate fake customer data
def generate_customers(num_customers):
    customers = []
    for _ in range(num_customers):
        customer = {
            'customer_name': fake.company(),
            'customer_address': fake.address(),
            'customer_contact': fake.phone_number()
        }
        customers.append(customer)
    return customers
   </code></pre>

<pre><code>
   # Function to generate fake product data
def generate_products(num_products, num_categories, warehouses, manufacturing_units):
    categories = ['Agriculture', 'Water Tanks', 'Sanitary', 'Plumbing', 'Industrial', 'PTMT Bath Fittings', 'Water Tank Cleaning Solutions', 'New']
    products = []
    for _ in range(num_products):
        product = {
            'product_name': fake.word(),
            'category_id': random.randint(1, num_categories),
            'warehouse_id': random.choice(warehouses)['warehouse_id'],
            'unit_id': random.choice(manufacturing_units)['unit_id']
        }
        products.append(product)
    return products
     </code></pre>


 ### **Database Design**


- The database design for the Raksha Pipes project involves creating a relational database schema to store various entities and their relationships.
- The `database_scripts/` folder contains SQL scripts for creating and populating the MySQL database. The script `create_tables.sql` defines the schema with multiple tables representing entities such as customers, products, sales, etc.
- Relationships between tables are established through foreign key constraints to ensure data integrity and maintain referential integrity.
- An ER diagram illustrating the database schema and table relationships is provided below:


![Repository Structure](https://github.com/Sankarshanpower8i/Doctor-Fee-Prediction/assets/133600711/917485e7-5bdc-49a5-9075-fe727825c407)



## Project Components

1. **Data Generation**: Synthetic data for customers, products, sales, employees, exports, manufacturing units, and warehouses is generated using Python scripts with the Faker library.
   
2. **Database Creation**: SQL scripts create a MySQL database named "raksha_pipesdata" with tables for storing various data entities.

3. **Data Insertion**: Python scripts insert the generated data into the MySQL database tables.
   
4. **Data Analysis**: SQL queries are executed to analyze the data stored in the database, extracting insights such as sales trends, product performance, and employee information.
   
5. **Power BI Dashboard**: An interactive dashboard is developed using Power BI, featuring visualizations like bar charts, line charts, pie charts, donut charts, stacked column charts, scatter plots, maps, and gauges to represent sales trends, product categories, customer profiles, and more.



## Repository Structure


- **Python Scripts**: Contains scripts for data generation and insertion.
- **SQL Scripts**: Includes scripts for database creation and data analysis.
- **Power BI Dashboard**: Contains the Power BI file (.pbix) for the interactive dashboard.
- **Documentation**: Consists of this README file providing an overview of the project.
- **Presentation**: Contains a presentation file summarizing project insights, methodology, and findings.

### **Dashboard Creation**


- The dashboard creation process for the Raksha Pipes project involved utilizing Power BI to visualize key business metrics and insights derived from the data.
- The `dashboard/` folder contains the Power BI dashboard file `raksha_dashboard.pbix`. This file serves as the interactive visualization tool presenting various metrics and trends relevant to Raksha Pipes' operations.

![Dashboard](https://github.com/Sankarshanpower8i/Doctor-Fee-Prediction/assets/133600711/9cc24b48-5747-435c-9adf-790eb8239c99)
  
- Key metrics displayed on the dashboard include:
    - Sales trends: Visualizations depicting sales performance over time, including revenue trends, sales by product category, and geographical distribution of sales.
    - Product performance: Analysis of product sales, profitability, and inventory levels, helping identify top-performing products and optimize inventory management.
    - Customer profiles: Insights into customer demographics, purchase behavior, and customer segmentation, aiding in targeted marketing efforts and customer relationship management.
- The interactive nature of the Power BI dashboard allows users to explore the data dynamically, drill down into specific metrics, and gain deeper insights into Raksha Pipes' business performance.




The project aims to provide stakeholders with insights derived from synthetic data analysis. The generated insights include sales trends, product performance metrics, and customer profiles, facilitating informed business decisions.

### **Setup Instructions**


- To set up the project locally, follow these steps:

    1. **Clone the Repository:** 
       ```bash
       git clone https://github.com/Sankarshanpower8i/Raksha_Pipes_Data_Analysis.git
       ```
    2. **Install Dependencies:** 
       - Install necessary Python packages by running:
         ```bash
         pip install -r requirements.txt
         ```
    3. **Run Data Generation Script:** 
       - Execute the Python script to generate synthetic data:
         ```bash
         python data_generation/generate_data.py
         ```
    4. **Setup MySQL Database:** 
       - Run the SQL scripts in the `database_scripts/` folder to create and populate the database.
       - Use a MySQL client or command-line interface to execute the scripts.
    5. **Open Power BI Dashboard:** 
       - Link the MySQL database to Power BI using appropriate connection settings.
       - Open the Power BI dashboard file `raksha_dashboard.pbix` to visualize the data and explore the dashboard.

      
 ## Presentation

The `presentation/` folder contains the video recording of the project presentation, explaining each step in detail. You can also access the presentation directly from Google Drive by clicking [here](https://drive.google.com/file/d/1F0RNNOzNfB53mjKGP84Bd7VsDozvVkGs/view?usp=sharing).


      
  # **Screenshots**
  
### **Database Design**

![ERD Diagram](https://github.com/Sankarshanpower8i/Vegetable-Data-Analyisis/assets/133600711/692018a8-5605-4ab5-892c-b3370a2703e1)



### **Dashboard Creation**

![Dashboard](https://github.com/Sankarshanpower8i/Doctor-Fee-Prediction/assets/133600711/9cc24b48-5747-435c-9adf-790eb8239c99)
