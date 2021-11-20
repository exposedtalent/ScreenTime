import json
import requests
from datetime import date, timedelta


twentyfourHour = '-2%20day'
thirtyDays = '-30%20day'
    
url='https://api.helium.io/v1/hotspots/' + heliumData[i]['HotspotAddr'] + '/rewards/sum?min_time=' + twentyfourHour + '&bucket=day'
response = requests.get(url)
response.raise_for_status()  # raises exception when not a 2xx response
if response.status_code != 204:
    new_data = response.json()
else:
    print('Error')
reward24hrs = new_data['data'][0]['total']
reward2day = new_data['data'][1]['total']