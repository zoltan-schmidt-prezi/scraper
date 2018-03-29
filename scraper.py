from bs4 import BeautifulSoup
import MySQLdb
import re
import requests

DEBUG = True

rates_url = 'https://www.generali.hu/Ugyfelszolgalat/Informaciok/Befektetesek/Eszkozalapjaink.aspx'
db_endpoint = 'scraperdb.c1mkc0degkxm.eu-central-1.rds.amazonaws.com'
db_user = 'scraper_admin'
db_passwd = 'scraper%admin'
db_name = 'scraper'



def scraper(url):
    print "Getting page contents for:", url
    r = requests.get(url)
    if r.status_code == 200:
        return r.text

def db_connector():
    print("Connect to DB here...")

    try:
        db = MySQLdb.connect(host = db_endpoint,
                             user = db_user,
                             passwd = db_passwd,
                             db = db_name)

        print "Successfully connected to ", db_name
    except Exception as e:
        print e
        raise

    return db

def db_writer(db):

    sql = """INSERT INTO main_exchange(date, updated, name, rate, sum)
             VALUES('2018-03-28', '2018-03-28','korte', 1.0001, 208998123)""" 
    try:
        cursor = db.cursor()
        cursor.execute(sql)
        db.commit()

        cursor.execute("SELECT * FROM main_exchange")

        for row in cursor.fetchall():
            print row[0]

    except Exception as e:
        print e
        raise

def db_close(db):
    db.close()

def parse_table_bs(html):
    values_table = []
    soup = BeautifulSoup(html, 'html.parser')
    for table in soup.findAll("table", { "class" : "generali-table" }):
        for row in table.findAll("tr"):
            cells = row.findAll("td")
            if len(cells) != 3:
                raise Exception('Column number mismatch')
            values_table_row = [elem.text.strip() for elem in cells]
            values_table.append(values_table_row)
        # Drop table header
        values_table = values_table[1:]
    return values_table

def main():
    db = db_connector()
    db_writer(db)
    db_close(db)
#    raw_data = scraper(rates_url)
#    vt = parse_table_bs(raw_data)
#    if DEBUG:
#        for item in vt:
#            print item

if __name__ == "__main__":
    main()
