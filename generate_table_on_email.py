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
    data = []

    for obj in objects:
        if "message" in obj:
            message = obj.get("message")
            try:
                message_data = json.loads(message)
                if isinstance(message_data, dict):
                    data.append(message_data)
                else:
                    print(f"Invalid data format in message: {message}")
            except json.JSONDecodeError:
                print(f"Invalid JSON format in message: {message}")
        else:
            print(f"Message field not found in document: {obj}")

    return data

def generate_html_table(data):
    # Start building the HTML table
    html = """
    <html>
    <head>
    </head>
    <body>
    <table border='1'>
    <tr>
    """

    # Extract keys from the first row of data
    if data:
        keys = data[0].keys()
        # Add table headers based on keys
        for key in keys:
            html += f"<th>{key}</th>"
        html += "</tr>\n"

        # Add table rows
        for row in data:
            html += "<tr>\n"
            for key in keys:
                html += f"<td>{row.get(key, '')}</td>"
            html += "</tr>\n"
    else:
        # If data is empty, show a message in the table
        html += "<th>No data available</th></tr>\n"

    # Close the table and HTML body
    html += "</table></body></html>"
    
    return html

# Call my_code() to generate data
#data = my_code()


# Write HTML table to a file
#with open('table.html', 'w') as file:
#    file.write(html_table)


def send_email(html_table):
    # Email configuration
    sender_email = "wonderfulworld1107@gmail.com"
    receiver_email = "agrawallehar66@gmail.com"
    password = "jlnm mqwv xmig arod"  #////smtp passwords

    # Create email message
    message = MIMEMultipart()
    message['From'] = sender_email
    message['To'] = receiver_email
    message['Subject'] = "Elasticsearch Data Report"

    # Add HTML table to email body
    message.attach(MIMEText(html_table, "html"))

    # Connect to SMTP server
    server = smtplib.SMTP('smtp.gmail.com', 587)
    server.starttls()

    # Login to Gmail
    server.login(sender_email, password)

    # Send email
    server.sendmail(sender_email, receiver_email, message.as_string())

    # Close SMTP connection
    server.quit()

# Starting point of script execution
if __name__ == "__main__":
    data = my_code()
    html_table = generate_html_table(data)
    send_email(html_table)
