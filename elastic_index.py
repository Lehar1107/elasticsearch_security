import smtplib

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



#featch  data from index pattern
def featchData(es,indexdata):
    query = {"query": {"match_all": {}}}
    documents = scan(es, index=index1, query=query)
    return [doc['_source'] for doc in documents]

def my_code():

    objects = featchData(es,index1)
    names = [obj.get("name") for obj in objects if obj is not None]
    print("Total fetched data:")
    for name in names:
        print(name)
    print("total featch data len(objects) : ",len(names))

    

#starting point of script execution
if __name__ == "__main__":
    my_code()
