import smtplib
import json
from email.mime.multipart import MIMEMultipart
from email.mime.text import MIMEText
from elasticsearch import Elasticsearch, helpers
from elasticsearch.helpers import scan

# existing Elasticsearch index
index1 = "filebeat-7.17.0-2024.04.15-000001"

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

    output += "Total fetched names:\n"
    for obj in objects:
        if "message" in obj:
            message = obj.get("message")
            try:
                name_data = json.loads(message)
                if "name" in name_data:
                    output += f"{name_data['name']}\n"
                else:
                    output += f"Name field not found in message: {message}\n"
            except json.JSONDecodeError:
                output += f"Invalid JSON format in message: {message}\n"
        else:
            output += f"Message field not found in document: {obj}\n"

    return output

def send_email(body):
    # Email configuration
    sender_email = "wonderfulworld1107@gmail.com"
    receiver_email = "wonderfulworld1107@gmail.com"
    password = "jlnm mqwv xmig arod"

    # Create email message
    message = MIMEMultipart()
    message['From'] = sender_email
    message['To'] = receiver_email
    message['Subject'] = "Elasticsearch Data Report"

    # Add body to email
    message.attach(MIMEText(body, "plain"))
                      #            jlnm mqwv xmig arod  ////smtp passwords
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
    output = my_code()
    print(output)  # Print output to console
    send_email(output)  # Send email with output
