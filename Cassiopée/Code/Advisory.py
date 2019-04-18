from bs4 import BeautifulSoup
import urllib.request
import re

class AppURLopener(urllib.request.FancyURLopener):
    version = "Mozilla/5.0"

opener = AppURLopener()


class Advisory:
    def send_to_db(self):
        """
        A MODIFIER

        Envoie les données de l'advisory dans la base de donnée

        Pour l'instant : print toutes les données
        """
        print(self.ics)
        print(self.ics_date)
        print()
        print(self.vendor)
        print(self.location)
        print()
        print(self.product)
        print(self.sector)
        print(self.countries)
        print()
        print(self.cve)
        print(self.cve_link)
        print(self.cve_date)
        print(self.cve_text)
        print()
        print(self.cvss)
        print(self.score)
        print()
        print(self.cwe)
        print(self.cwe_link)
        print(self.abstraction)
        print(self.structure)
        print(self.sfp1)
        print(self.sfp2)

    def __init__(self,url):
        # Récupération du code html de l'url de l'advisory
        page = opener.open(url)
        self.soup = BeautifulSoup(page, 'html.parser')

        # Référence de l'advisory ICS-CERT
        self.ics = self.parser('h1', 'Advisory', "[A-Za-z\s]*\(")

        # Date de publication originale de l'advisory
        self.ics_date = self.parser('footer', 'date', "[A-Za-z\s]*: ")

        # Entreprise qui vend le produit
        self.vendor = self.parser_parent("Vendor")

        # Localisation de l'entreprise
        self.location = self.parser_parent("LOCATION")

        # Nom du produit
        self.product = self.parser_parent("Equipment")

        # Liste des secteurs d'activité auxquels appartient le produit
        self.sector = self.parser_parent("SECTORS").split(", ")

        # Pays où le produit est disponible
        self.countries = self.parser_parent("DEPLOYED")


        # Liste des CVE (possibilité d'avoir plusieurs CVE par advisory)
        self.cve = []

        # Liste des liens vers NVD
        self.cve_link = []

        # Liste des dates de création des CVE (1er Janvier si date précise non disponible)
        self.cve_date = []

        # Liste des descriptions des vulnérabilités
        self.cve_text = []

        # Remplie les 4 listes précédentes
        self.cve_parser()


        # Liste des listes des vecteurs CVSS splités (possibilité d'avoir plusieurs CVSS par advisory)
        self.cvss = []

        # Liste des scores cvss
        self.score = []

        # Remplie les 2 listes précédentes
        self.cvss_parser()


        # Liste des références CWE (possibilité d'avoir plusieurs CWE par advisory)
        self.cwe = []

        # Liste des liens CWE
        self.cwe_link = []

        # Liste des abstractions répertoriées pour chaque CWE
        self.abstraction = []

        # Liste des structures répertoriées pour chaque CWE
        self.structure = []

        # Liste des arborescences SFP1 pour chaque vulnérabilité
        self.sfp1 = []

        # Liste des arborescences SFP2 pour chaque vulnérabilité
        self.sfp2 = []

        # Remplie les 6 listes précédentes
        self.cwe_parser()



    def parser(self,balise,target,clean,):
        """
        Récupère l'information voulue --> pour ref ics et date ics

        :param balise: balise html utilisée pour l'information

        :param target: expression reguliere pour trouver l'information

        :param clean: expression reguliere pour enlever les informations superflues recuperees

        :return: retourne l'information voulue
        """
        res = self.soup.find(balise, text=re.compile(target))
        res = res.getText()
        res = re.sub(clean, "", res)
        res = re.sub("\)", "", res)
        return res

    def parser_parent(self,exp):
        """
        Récupère l'information voulue --> pour l'entreprise, sa localisation, le produit, ses secteurs
        et les pays où il est déployé

        Fonction différente de la précédente : on passe par la balise enfant pour ces informations (toujours Strong)

        :param exp: expression régulière pour récupérer l'information voulue

        :return: retourne l'information voulue
        """
        res = self.soup.find('strong', text=re.compile(exp))

        # Problème si la syntaxe usuelle n'est pas respectée --> renvoie None dans ce cas
        if res != None:
            res = res.parent
            res = res.getText()
            res = re.sub("[A-Za-z0-9/\s]*: ", "", res)
        else:
            res = "None"
        return res

    def parser_cve_date(self,cve):
        """
        Récupère la date précise de création d'un CVE si celle-ci est disponible (1er Janvier sinon)

        :param cve: CVE dont on veut la date

        :return: retourne la date de création du CVE
        """
        pageCVE = opener.open(cve.get('href'))
        soupCVE = BeautifulSoup(pageCVE, 'html.parser')
        res = soupCVE.find('strong', text=re.compile("Last Modified"))
        if res != None:
            res = soupCVE.find('strong', text=re.compile("Last Modified")).next_sibling.next_sibling
            res = res.getText()
            res = re.sub("[A-Za-z0-9/\s]*: ", "", res)
            return res
        res = cve.getText()
        res = re.sub("CVE-","",res)
        res = re.sub("-[0-9]*","",res)
        res = "01/01/" + res
        return res

    def cve_parser(self):
        """
        Récupère les CVE, leurs liens vers NVD, dates de création, et les texte associées chaque vulnérabilité

        Remplie les listes initialisées au préalable (voir fonction __init__ ci-dessus)
        """
        cves = self.soup.findAll('a', text=re.compile("CVE-"))
        for cve in cves:
            id = cve.getText()
            self.cve+=[id]
            cve_link = cve.get('href')
            self.cve_link += [cve_link]
            cve_date = self.parser_cve_date(cve)
            self.cve_date += [cve_date]
            text = cve.parent.previous_sibling.getText()
            self.cve_text += [text]


    def cvss_parser(self):
        """
        Récupère les vecteur CVSS, les split dans des listes ; récupère aussi les scores CVSS

        Remplie les listes initialisées au préalable (voir fonction __init__ ci-dessus)
        """
        cvsss = self.soup.findAll('a', text=re.compile("AV:"))
        for cvss in cvsss:
            id = cvss.getText().split('/')
            self.cvss += [id]
            score = cvss.parent.getText()
            score = re.sub("[A-Za-z0-9\-.,;\s]* score of ","",score)
            score = re.sub(" has[A-Za-z0-9\-.,;\s\(\):/]*","",score)
            self.score += [score]

    def cwe_parser(self):
        """
        Récupère les références CWE, leurs lien, abstraction et structures répertoriées et leurs arborescences SFP1 et SFP2

        Remplie les listes initialisées au préalable (voir fonction __init__ ci-dessus)
        """
        cwes = self.soup.findAll('a', text=re.compile("CWE-"))
        for cwe in cwes:
            pageCWE = opener.open(cwe.get('href'))
            soupCWE = BeautifulSoup(pageCWE, 'html.parser')
            id = soupCWE.find('h2', text=re.compile('CWE-')).getText()
            id = re.sub(": [A-Za-z-\s]*","",id)
            self.cwe += [id]

            cwe_link = cwe.get('href')
            self.cwe_link += [cwe_link]

            abstruct=soupCWE.find("div",text=re.compile('Weakness')).next_sibling.getText()
            abs = re.sub("Abstraction: ","",abstruct)
            abs = re.sub("Structure: [A-Za-z:\s]*","",abs)
            abs = re.sub(" ", "", abs)
            struct = re.sub("[A-Za-z:\s]*: ","",abstruct)
            self.abstraction += [abs]
            self.structure += [struct]

            sfp2 = soupCWE.find("a",text=re.compile('SFP Secondary'))

            # Possible absence de SFP2 :
            if sfp2 != None:
                addr = re.sub("/data[A-Za-z0-9/\-:.\s]*",sfp2.get('href'),cwe.get('href'))
                pageSFP1 = opener.open(addr)
                soupSFP1 = BeautifulSoup(pageSFP1, 'html.parser')
                sfp2 = sfp2.getText()
                sfp2 = re.sub("[A-Z-a-z\s]*: ","",sfp2)
                self.sfp2 += [sfp2]


                sfp1 = soupSFP1.find('a', text=re.compile('SFP Primary'))
                sfp1 = sfp1.getText()
                sfp1 = re.sub('[A-Za-z\s]*: ','',sfp1)
                self.sfp1 += [sfp1]
            else:
                self.sfp2 += ["None"]
                self.sfp1 += ["None"]