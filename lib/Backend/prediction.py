from flask import Flask, request, jsonify
import pandas as pd
import numpy as np
from sklearn.ensemble import RandomForestRegressor
from sklearn.preprocessing import StandardScaler

app = Flask(__name__)

# Load dataset
dataset = pd.read_csv("/Users/prajwal_t_a/Desktop/Coding/DTL/machine_analysis/lib/Backend/Machine 1.csv")
x_features = ['Temperature (°C)', 'Vibration Level (mm/s)', 'Energy Usage (kWh)']

# Function to train the model
def train_model(output_feature, data_entries):
    train_data = dataset.iloc[0:data_entries]
    x_train = np.array([[a, b, c] for a, b, c in zip(train_data["Temperature (°C)"], train_data["Vibration Level (mm/s)"], train_data["Energy Usage (kWh)"])])

    y_train = np.array(train_data[output_feature])

    scaler = StandardScaler()
    x_norm = scaler.fit_transform(x_train)

    rf_regressor = RandomForestRegressor(n_estimators=100, random_state=42)
    rf_regressor.fit(x_norm, y_train)

    return scaler, rf_regressor

# API endpoint for prediction
@app.route('/predict', methods=['POST'])
def predict():
    data = request.json
    output_feature = data['output_feature']
    data_entries = data['data_entries']
    temperature = data['temperature']
    vibration = data['vibration']
    energy = data['energy']

    # Train the model
    scaler, rf_regressor = train_model(output_feature, data_entries)

    # Make prediction
    x_input = np.array([[temperature, vibration, energy]])
    x_norm = scaler.transform(x_input)
    prediction = rf_regressor.predict(x_norm)
    # Round the prediction to 2 decimal places
    rounded_prediction = round(prediction.item(), 2)

    return jsonify({'prediction': rounded_prediction})

if __name__ == '__main__':
    app.run(debug=True)
