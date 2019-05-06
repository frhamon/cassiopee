from Advisory import Advisory
from bs4 import BeautifulSoup
import urllib.request
import re


"""
ICS-CERT n'accepte pas les requetes ne venant pas de navigateurs,
on change alors le User-Agent de nos requete pour se faire passer
pour Mozilla Firefox:
"""
class AppURLopener(urllib.request.FancyURLopener):
    version = "Mozilla/5.0"

# Crée une instance d'opener d'url avec le bon User-Agent
opener = AppURLopener()


# Récupération du code html de l'url de la première page des advisories de ICS-CERT
page = opener.open("https://ics-cert.us-cert.gov/advisories")
soup = BeautifulSoup(page,'html.parser')

# Récupère les urls de tous les advisories de la première page
urls = soup.findAll('a',href=re.compile('/advisories/I'))

# Récupère et envoie en bdd les données des 10 premiers advisories
for i in range(2,5):
    url = urls[i].get('href')
    url = "https://ics-cert.us-cert.gov"+url
    adv = Advisory(url)
    adv.send_to_db()