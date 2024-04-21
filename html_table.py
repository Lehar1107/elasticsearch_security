import smtplib
import json
from email.mime.multipart import MIMEMultipart
from email.mime.text import MIMEText
from elasticsearch import Elasticsearch, helpers
from elasticsearch.helpers import scan

# existing Elasticsearch index
index1 = "filebeat-7.17.0-2024.04.21-000001"

# Elasticsearch connection
es = Elasticsearch([{'host': 'localhost', 'port': 9200}])

# fetch data from index pattern
def fetchData(es, indexdata):
    query = {"query": {"match_all": {}}}
    documents = scan(es, index=index1, query=query)
    return [doc['_source'] for doc in documents]

def my_code():
    objects = fetchData(es, index1)
    output = ""

    output += "Fetched data:\n"
    for obj in objects:
        if "message" in obj:
            message = obj.get("message")
            try:
                data = json.loads(message)
                if isinstance(data, dict):
                    fields_info = ", ".join([f"{key}: {data[key]}" for key in data])
                    output += f"{fields_info}\n"
                else:
                    output += f"Invalid data format in message: {message}\n"
            except json.JSONDecodeError:
                output += f"Invalid JSON format in message: {message}\n"
        else:
            output += f"Message field not found in document: {obj}\n"

    return output

def generate_html_table(data):
    # Start building the HTML table
    html = "<table border='1'>\n"
    
    # Split the data string into rows
    rows = data.strip().split('\n')
    
    # Iterate over each row
    for row in rows:
        html += "  <tr>\n"
        # Split row data into cells
        cells = row.strip().split(',')
        # Iterate over each cell
        for cell in cells:
            html += f"    <td>{cell}</td>\n"
        html += "  </tr>\n"
    
    # Close the table
    html += "</table>"
    
    return html

# Call my_code() to generate data
data = my_code()

# Generate HTML table from data
html_table = generate_html_table(data)

# Write HTML table to a file
with open('table.html', 'w') as file:
    file.write(html_table)

# Open the HTML file in a web browser
import webbrowser
webbrowser.open('table.html')
