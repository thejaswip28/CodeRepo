from flask import Flask, jsonify
from datetime import datetime

# Create an instance of the Flask app
app = Flask(__name__)

# Define a route and its corresponding handler
@app.route('/api', methods=['GET'])
def api():
    # Get the current time
    current_time = datetime.now().strftime('%Y-%m-%d %H:%M:%S')

    # Define the data to be returned by the API
    data = {
        'time': current_time,
        'message': 'Automate All The Things'
    }

    # Return the data as JSON
    return jsonify(data)

# Run the Flask app
if __name__ == '__main__':
    app.run(host='0.0.0.0')