# Assignment 004 - Azure Cloud Fundamentals and Data Pipeline using Azure Data Factory

## Objective

Understand Azure Cloud fundamentals and implement an end-to-end data pipeline using Azure Storage Account and Azure Data Factory (ADF).

---

## Technologies Used

- Microsoft Azure
- Azure Resource Group
- Azure Storage Account
- Azure Blob Storage
- Azure Data Factory (ADF)

---

## Steps Performed

### 1. Created Azure Resources
- Created a Resource Group.
- Created an Azure Storage Account.
- Created Blob Storage containers:
  - input
  - output

### 2. Uploaded Dataset
- Uploaded the Superstore CSV dataset into the **input** container.

### 3. Created Azure Data Factory
- Created an Azure Data Factory instance.
- Explored:
  - Author
  - Monitor
  - Manage

### 4. Created Linked Service
- Connected Azure Data Factory with the Azure Storage Account.

### 5. Created Datasets
- Source Dataset → input/superstore.csv
- Destination Dataset → output/copied_superstore.csv

### 6. Built Pipeline
Pipeline consists of:

Get Metadata
↓
Copy Data

The Get Metadata activity validates the source file before copying it to the destination container.

### 7. Executed Pipeline
- Pipeline validated successfully.
- Pipeline executed successfully using Debug.
- Verified the copied CSV file in the output container.

### 8. IAM
Configured Azure IAM permissions for secure resource access.

---

## Output

- Successfully copied the dataset from the input Blob container to the output Blob container.
- Metadata validation completed successfully.
- Pipeline execution status: **Succeeded**.

---

## Screenshots

Screenshots demonstrating every step are available in the `screenshots` folder.

---

## Learning Outcomes

- Azure Resource Management
- Azure Storage Account
- Blob Containers
- Azure Data Factory
- Linked Services
- Datasets
- Get Metadata Activity
- Copy Data Activity
- Pipeline Validation
- Pipeline Monitoring
- IAM Configuration

---

## Conclusion

Successfully implemented an end-to-end Azure Data Factory pipeline that reads a CSV file from Azure Blob Storage, validates its metadata, copies it to another Blob container, and monitors execution through Azure Data Factory.
