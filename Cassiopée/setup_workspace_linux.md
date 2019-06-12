# Setup the workspace

## Install Python latest version

- Check if Python3 is installed by typing in the command shell : `python3`. You should see something like :

`Python 3.7.2 (tags/v3.7.2:9a3ffc0492, Dec 23 2018, 22:20:52) [MSC v.1916 32 bit (Intel)] on win32
Type "help", "copyright", "credits" or "license" for more information.
\>>> .`

Type `exit()` to exit.

- If Python3 not installed, in your terminal, type:
`sudo add-apt-repository ppa:deadsnakes/ppa`
`sudo apt update`
`sudo apt install python3.7`

- Then check again if Python3 is well installed

## Install pip for Python3

- In your terminal type `sudo apt install python3-pip`


## Install Python Data Analysis Library 'Pandas'

- In your terminal, type `python3 -m pip install pandas`

See full documentation on their [WebPage](http://pandas.pydata.org/pandas-docs/stable/ "Pandas Documentation").

Some other precious information might be found at this [address](https://www.analyticsvidhya.com/blog/2016/01/complete-tutorial-learn-data-science-python-scratch-2/).

## Install MySQL Python Dependecy

- WARNING : not compatible with MySQL 8.0, must have an older version
- In your terminal, type `sudo apt-get install python3-dev`
- Then `python3 -m pip install mysqlclient`

## Install BeautifulSoup 4

- In your terminal type `python3 -m pip install beautifulsoup4`


## Import SQL file in MySQL

- When you get your .sql file, type `mysql -u root -p database_name < file.sql`, and enter your password.
- When you're done using the database, you have to dump it. To do so, disconnect from MySQL server, and then type `mysqldump -u root -p database_name > file.sql`, and enter your password when asked.
