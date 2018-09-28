# import paho.mqtt.client as mqtt
import paho.mqtt.publish as publish
import time

HOST= "120.79.63.76"
PORT= 1883

SID= "/ssh/ip"


def on_connect(client, userdata, flags, rc):
    print("Connected with result code "+str(rc))
    client.subscribe(SID)

def on_message(client, userdata, msg):
    print(msg.topic+" "+msg.payload.decode("utf-8"))

def ip2yun():  
    while True:
        client_id = time.strftime('%Y%m%d%H%M%S',time.localtime(time.time()))
        ipdata = "120.79.63.76"
        publish.single(SID, ipdata, qos = 1,hostname=HOST,port=PORT, client_id=client_id,auth = {'username':"ssh", 'password':"555555"})
       print("ip send")
       time.sleep(30)

if __name__ == '__main__':   
    ip2yun()

