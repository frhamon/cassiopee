from bs4 import BeautifulSoup
import urllib.request
import re

class AppURLopener(urllib.request.FancyURLopener):
    version = "Mozilla/5.0"

opener = AppURLopener()


class Advisory:
    def send_to_db(self):
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
        page = opener.open(url)
        self.soup = BeautifulSoup(page, 'html.parser')
        self.ics = self.parser('h1', 'Advisory', "[A-Za-z\s]*\(")
        self.ics_date = self.parser('footer', 'date', "[A-Za-z\s]*: ") #Original release date
        self.vendor = self.parser_parent("Vendor")
        self.location = self.parser_parent("LOCATION")
        self.product = self.parser_parent("Equipment")
        self.sector = self.parser_parent("SECTORS").split(", ")
        self.countries = self.parser_parent("DEPLOYED")

        self.cve = []
        self.cve_link = []
        self.cve_date = [] # 1er Janvier si pas de date
        self.cve_text = []
        self.cve_parser()

        self.cvss = []
        self.score = []
        self.cvss_parser()

        self.cwe = []
        self.cwe_link = []
        self.abstraction = []
        self.structure = []
        self.sfp1 = []
        self.sfp2 = []
        self.cwe_parser()



    def parser(self,balise,target,clean,):
        res = self.soup.find(balise, text=re.compile(target))
        res = res.getText()
        res = re.sub(clean, "", res)
        res = re.sub("\)", "", res)
        return res

    def parser_parent(self,exp):
        res = self.soup.find('strong', text=re.compile(exp))
        if res != None:
            res = res.parent
            res = res.getText()
            res = re.sub("[A-Za-z0-9/\s]*: ", "", res)
        else:
            res = "None"
        return res

    def parser_cve_date(self,cve):
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

    def cve_parser(self):
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
        cvsss = self.soup.findAll('a', text=re.compile("AV:"))
        for cvss in cvsss:
            id = cvss.getText()
            self.cvss += [id]
            score = cvss.parent.getText()
            score = re.sub("[A-Za-z0-9\-.,;\s]* score of ","",score)
            score = re.sub(" has[A-Za-z0-9\-.,;\s\(\):/]*","",score)
            self.score += [score]

    def cwe_parser(self):
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
            if sfp2 != None:     #Pas toujours de SFP2
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