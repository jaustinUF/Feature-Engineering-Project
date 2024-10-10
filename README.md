# Feature Engineering Project
## Project Description
Select and export data from a database to create and train a classification model to predict if customers who ordered before 2012 -01-01 will order again in the following six months (2012-01-01 to 2012-07-01).
(Note: there were no reorders in that following six months; project was redesigned to include the following 24 months.)

## Project purpose
Gain experience in feature engineering:
- analyze the data and database structure (AdventureWorksDW2022 in SQL Server)
- select features (columns) that might affect the target (dependent variable)
- export the selected features and target in .csv file
- use the .csv file to train and test a model
- analyze testing metrics

## Technical information
- Customer_info.xlsx: spreadsheet used to select features
- Project5_with_features.sql: queries the DB in SQL Server, and returns the data table with target and features.
- VSCode SQL output panel saves data table to a .csv file
- .csv file is used in two Colab notebook scripts (MyDrive > Raffaele_Miele_mentorship > AdvWks_churn_project):
- AdvWks_churn_1.ipynb:
    - prepare data (one-hot object dtypes),
    - train a DecisionTreeClassifier model,
    - test and analyze metrics: accuracy, precision, recal, f1-score, confusion matrix.
- AdvWks_churn_2.ipynb:
    - prepare data (one-hot object dtypes),
    - train a RandomForestClassifier model,
    - test and analyze feature_importance table   
