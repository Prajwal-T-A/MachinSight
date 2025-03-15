from flask import Flask, request, jsonify
import pandas as pd
import numpy as np
from sklearn.ensemble import RandomForestRegressor
from sklearn.preprocessing import StandardScaler

app = Flask(__name__)

# Read the dataset
dataset = pd.read_csv("/Users/prajwal_t_a/Desktop/Coding/DTL/machine_analysis/lib/Backend/Machine 1.csv")

# Function to train and predict
def train_and_predict(output_feature, input_value):
    input_feature = 'Temperature (°C)'
    data_entries = 20  # Number of data entries to consider for training

    # Extract training data
    train_data = dataset.iloc[0:data_entries]
    x_train = np.array(train_data[input_feature]).reshape(-1, 1)  # Reshape for single feature input
    y_train = np.array(train_data[output_feature])

    # Normalize input features
    scaler = StandardScaler()
    x_norm = scaler.fit_transform(x_train)

    # Train model
    rf_model = RandomForestRegressor(n_estimators=100, random_state=42)
    rf_model.fit(x_norm, y_train)

    # Predict
    x_input = np.array([[float(input_value)]])
    y_prediction = rf_model.predict(scaler.transform(x_input))

    return y_prediction.item()

@app.route('/predict', methods=['POST'])
def predict():
    data = request.get_json()
    output_feature = data.get('output_feature')
    input_value = data.get('input_value')

    if not output_feature or not input_value:
        return jsonify({"error": "Missing input values"}), 400

    try:
        prediction = train_and_predict(output_feature, input_value)
        return jsonify({"predicted_value": prediction})
    except Exception as e:
        return jsonify({"error": str(e)}), 500

if __name__ == '__main__':
    app.run(debug=True)
