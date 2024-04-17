import smtplib
import json
from elasticsearch import Elasticsearch, helpers
from elasticsearch.helpers import scan
from datetime import datetime, timedelta
from elasticsearch.helpers import bulk
from elasticsearch.exceptions import RequestError
from email.mime.multipart import MIMEMultipart
from email.mime.text import MIMEText
from datetime import datetime


#existing elastcIndex
index1 = "filebeat-7.17.0-2024.04.15-000001"


#elasticSeacrch conneciton
es = Elasticsearch([{'host': 'localhost', 'port': 9200}])



#fetch  data from index pattern
def fetchData(es,indexdata):
    query = {"query": {"match_all": {}}}
    documents = scan(es, index=index1, query=query)
    return [doc['_source'] for doc in documents]

def my_code():

    objects = fetchData(es,index1)
    print("total fetch data len(objects) : ",len(objects))

    print("Total fetched names:")
    for obj in objects:
        if "message" in obj:
            message = obj.get("message")
            try:
                name_data = json.loads(message)
                if "name" in name_data:
                    print(name_data["name"])
                else:
                    print("Name field not found in message", message)
            except json.JSONDecodeError:
                print("Invalid json format in message", message)
        else:
             print("Message field not found in document:", obj)
                
         

    

#starting point of script execution
if __name__ == "__main__":
    my_code()
