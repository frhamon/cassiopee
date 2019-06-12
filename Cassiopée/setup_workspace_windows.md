# Setup the workspace

## Install Python latest version

- Download Python latest version on [Python Download Page](https://www.python.org/downloads/ "Python Download Page")
- Run the downloaded .exe file
- Check the "Add to PATH" box, and click "Install"
- When done, check the success of the installation
by typing in the command shell : `python`. You should see something like :

`Python 3.7.2 (tags/v3.7.2:9a3ffc0492, Dec 23 2018, 22:20:52) [MSC v.1916 32 bit (Intel)] on win32
Type "help", "copyright", "credits" or "license" for more information.
\>>> .`

Type `exit()` to exit.

## Install Python Data Analysis Library 'Pandas'

- In your terminal, type `python -m pip install --upgrade pandas`
- To check whether Pandas is successfully installed, type in your Python terminal `import pandas as pd`, then `pd.__version__`.
(To open the Python terminal, type `python` in your terminal.).
You may also use `pip list` in your main terminal, and check if you see 'pandas' in the list.

See full documentation on their [WebPage](http://pandas.pydata.org/pandas-docs/stable/ "Pandas Documentation").

Some other precious information might be found at this [address](https://www.analyticsvidhya.com/blog/2016/01/complete-tutorial-learn-data-science-python-scratch-2/).

## Install MySQL Python Dependecy

- WARNING : not compatible with MySQL 8.0, must have an older version

- Get to this [page](https://www.lfd.uci.edu/~gohlke/pythonlibs/#mysqlclient), and download the mysqlclient .whl extension package that corresponds to your environment (cp37 means it is adapted for Python 3.7).
- Then, install this package by executing in your terminal `python -m pip install C:/Users/%USERNAME%/Downloads/%WHL_PACKAGE%`, assuming the package can be found in your Download folder.
- To import MySQLClient in Python, execute `import MySQLdb`.

## Install BeautifulSoup 4

- Execute `pip install beautifulsoup4`
- To import it in a Python project, execute in your Python terminal : `from bs4 import BeautifulSoup`

## Install Jupyter NoteBook

- Execute `pip install jupyter`
- To launch Jupyter, execute `jupyter notebook` in your terminal. Jupyter should open in your browser.

## Import SQL file in MySQL

- When you get your .sql file, execute in cmd.exe `mysql -u root -p database_name < file.sql`, and enter your password.
- When you're done using the database, you have to dump it. To do so, disconnect from MySQL server, and execute in cmd.exe `mysqldump -u root -p database_name > file.sql`, and enter your password when asked.
