# Setup the workspace

## Install Python latest version

- Install Homebrew by typing in a terminal : `/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"`
- Then type `brew install python3`
- When done, check the success of the installation
by typing in the command shell : `python3`. You should see something like :

`Python 3.7.2 (tags/v3.7.2:9a3ffc0492, Dec 23 2018, 22:20:52) [MSC v.1916 32 bit (Intel)] on win32
Type "help", "copyright", "credits" or "license" for more information.
\>>> .`

Type `exit()` to exit.

## Install pip for python3

- pip should be installed with `brew install python3`

## Install Python Data Analysis Library 'Pandas'

- In your terminal, type `python3 -m pip install pandas`

See full documentation on their [WebPage](http://pandas.pydata.org/pandas-docs/stable/ "Pandas Documentation").

Some other precious information might be found at this [address](https://www.analyticsvidhya.com/blog/2016/01/complete-tutorial-learn-data-science-python-scratch-2/).

## Install MySQL Python Dependecy

- In your terminal, type `brew install mysql-connector-c` # macOS (Homebrew)  (Currently, it may has bug. See below)

- Then `python3 -m pip install mysqlclient`

#### **Note about bug of MySQL Connector/C on macOS**

See also: https://bugs.mysql.com/bug.php?id=86971

Versions of MySQL Connector/C may have incorrect default configuration options that cause compilation errors when `mysqlclient-python` is installed.  (As of November 2017, this is known to be true for homebrew's `mysql-connector-c` and [official package](https://dev.mysql.com/downloads/connector/c/))

Modification of `mysql_config` resolves these issues as follows.

Change

```
# on macOS, on or about line 112:
# Create options
libs="-L$pkglibdir"
libs="$libs -l "
```

to

```
# Create options
libs="-L$pkglibdir"
libs="$libs -lmysqlclient -lssl -lcrypto"
```

An improper ssl configuration may also create issues; see, e.g, `brew info openssl` for details on macOS.

## Install BeautifulSoup 4

- In your terminal type `python3 -m pip install beautifulsoup4`


## Import SQL file in MySQL

- When you get your .sql file, type `mysql -u root -p database_name < file.sql`, and enter your password.
- When you're done using the database, you have to dump it. To do so, disconnect from MySQL server, and then type `mysqldump -u root -p database_name > file.sql`, and enter your password when asked.
