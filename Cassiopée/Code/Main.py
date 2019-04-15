from Advisory import Advisory
from bs4 import BeautifulSoup
import urllib.request
import re

test = Advisory("https://ics-cert.us-cert.gov/advisories/ICSA-19-099-01")

# class AppURLopener(urllib.request.FancyURLopener):
#     version = "Mozilla/5.0"
#
# opener = AppURLopener()
# page = opener.open("https://ics-cert.us-cert.gov/advisories")
# soup = BeautifulSoup(page,'html.parser')
#
#
# advisories = []
# urls = soup.findAll('a',href=re.compile('/advisories/I'))
# for i in range(5):
#     url = urls[i].get('href')
#     url = "https://ics-cert.us-cert.gov"+url
#     advisories += [Advisory(url)]