* Dataset Url Price Prediction -
https://www.kaggle.com/datasets/shubhambathwal/flight-price-prediction

* Dataset Url Delay Prediction -
* https://www.kaggle.com/datasets/usdot/flight-delays/data

Flight Price and Delay Prediction
Overview
This project focuses on two major tasks related to air travel:

Flight Delay Prediction (Classification Problem): Predict the likelihood and category of flight delays (on-time, moderate, or severe) using multiple classification models.
Flight Price Prediction (Regression Problem): Predict flight ticket prices based on various features such as airline, number of stops, departure time, etc., using multiple regression models.
Project Structure
The project consists of the following components:

Delay Prediction: Classification models to predict delays.

EDA-Delay.ipynb: Contains Exploratory Data Analysis (EDA) on the delay dataset.
Models-Delay.ipynb: Implements 10 different classification models and selects the best one based on performance metrics.
Price Prediction: Regression models to predict flight prices.

EDA_Flight_Price.ipynb: Conducts EDA on the flight price dataset.
Models_Flight_Price.ipynb: Implements 10 regression models and chooses the best one (ExtraTreesRegressor) for predicting ticket prices.
Data: The cleaned datasets used for model training.

Clean_Dataset.csv: The dataset used for flight price prediction.
Other files:

requirements.txt: Lists all Python dependencies for this project.
setup.sh: Shell script to set up the project environment.
README.md: This file, providing an overview and instructions.
Tasks
1. Flight Delay Prediction
This task involves classifying flight delays into four categories:

0: On-time or minor delays (less than 15 minutes)

1: Delays between 15 and 30 minutes

2: Delays between 30 and 60 minutes

3: Delays greater than 60 minutes

EDA:

Dataset inspection and cleaning.
Feature engineering, where delay categories are created and irrelevant columns are removed.
Models: Ten classification models are implemented:

Logistic Regression
K-Nearest Neighbors (KNN)
Decision Trees
Random Forest
Support Vector Machine (SVM)
Gradient Boosting
Naive Bayes
Neural Networks
XGBoost
LightGBM
Evaluation: The models are evaluated based on accuracy, precision, recall, and F1-score, and the best performing model is selected.

2. Flight Price Prediction
This task focuses on predicting the price of a flight ticket based on features such as airline, source city, number of stops, departure time, and class of travel.

EDA:

The data is inspected, cleaned, and transformed into numerical format where necessary.
Categorical columns are encoded, and missing values are handled.
Models: Ten regression models are implemented:

Linear Regression
Ridge Regression
Lasso Regression
K-Nearest Neighbors (KNN)
Decision Trees
Random Forest
Gradient Boosting
XGBoost
Bagging Regressor
ExtraTrees Regressor
Evaluation: The models are evaluated based on:

Mean Absolute Error (MAE)
Mean Squared Error (MSE)
Root Mean Squared Error (RMSE)
R² Score
The ExtraTreesRegressor model is selected as the best-performing model with an R² score of 0.98966 and a MAPE (Mean Absolute Percentage Error) of 5.54%.
Setup and Installation
Requirements
To run the notebooks, you'll need the following dependencies installed:

Python 3.x
Pandas
NumPy
Scikit-learn
XGBoost
LightGBM
Matplotlib
Seaborn
Jupyter Notebook
You can install all the necessary dependencies by running:
pip install -r requirements.txt

Running the Project
1. Clone the repository:

git clone <repository-url>
cd Flight_Price_Delay_Prediction

3. Set up the environment using the provided setup.sh script:

bash setup.sh

5. Open Jupyter Notebook and run the notebooks:

jupyter notebook

Navigate to the relevant notebooks for flight delay or price prediction:

Delay_prediction/EDA-Delay.ipynb
Delay_prediction/Models-Delay.ipynb
Price_Prediction/EDA_Flight_Price.ipynb
Price_Prediction/Models_Flight_Price.ipynb
Results
Delay Prediction: The delay prediction models classify flights into different delay categories, using factors such as flight times, weather conditions, and airlines.
Price Prediction: The best model for price prediction is the ExtraTreesRegressor, with an R² score of 0.98966 and a MAPE of 5.54%.
Future Improvements
Incorporate additional features such as weather data, passenger load, or flight path information to further improve the model performance.
Address class imbalance in the delay dataset, possibly by using techniques like SMOTE or class weighting.
