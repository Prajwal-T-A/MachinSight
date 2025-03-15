from flask import Flask, request, jsonify
import pandas as pd
import numpy as np
from sklearn.linear_model import LogisticRegression

app = Flask(__name__)

# Load the dataset
dataset = pd.read_csv("/Users/prajwal_t_a/Desktop/Coding/DTL/machine_analysis/lib/Backend/Machine 1.csv")

def train_model(output_feature, data_entries):
    # Extract training data
    train_data = dataset.iloc[:data_entries]
    x_train = np.array(train_data[output_feature]).reshape(-1, 1)
    y_train = np.array(train_data["Error Codes"])
    
    # Train logistic regression model
    lr_model = LogisticRegression()
    lr_model.fit(x_train, y_train)
    return lr_model

@app.route('/predict_error', methods=['POST'])
def predict_error():
    data = request.json
    output_feature = data['output_feature']
    data_entries = data['data_entries']
    input_value = data['input_value']
    
    # Train the model
    lr_model = train_model(output_feature, data_entries)
    
    # Make prediction
    prediction = lr_model.predict(np.array([[input_value]]))
    return jsonify({'error_code_prediction': prediction.item()})

if __name__ == '__main__':
    app.run(debug=True)
