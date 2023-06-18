import requests
from bs4 import BeautifulSoup

url = 'https://www.youtube.com/watch?v=bytnxnZFLeg&ab_channel=IndianPythonista'
response = requests.get(url)
soup = BeautifulSoup(response.text, 'html.parser')
video = soup.find('video')
source = video.find('src')
print(source['src'])