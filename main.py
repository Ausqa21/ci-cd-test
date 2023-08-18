from flask import Flask, jsonify

app = Flask(__name__)

@app.get("/")
def get_message():
    try:
        return jsonify({'message': "Hello World"})
    except Exception:
        return jsonify({'error': 'Failed to read file.'}), 500


@app.route('/health', methods=['GET'])
def health_check():
    return jsonify({'status': 'healthy'})
