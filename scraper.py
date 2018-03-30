from bs4 import BeautifulSoup
from datetime import date
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

        db.set_character_set('utf8')

        print "Successfully connected to ", db_name
    except Exception as e:
        print e
        raise

    return db

def db_writer(db, data):

    cursor = db.cursor()
    cursor.execute('SET NAMES utf8;')
    cursor.execute('SET CHARACTER SET utf8;')
    cursor.execute('SET character_set_connection=utf8;')

    sql_add_exchange_rate_query = """INSERT INTO main_exchange(date,
                                       updated, name, rate, sum)
                                       VALUES(%s, %s, %s, %s, %s)"""

    for item in data:
        sql_add_exchange_rate_data = (item['date'],
                                    item['updated'],
                                    item['name'].encode('UTF-8'),
                                    item['rate'],
                                    item['sum'])

        try:
            cursor.execute(sql_add_exchange_rate_query,
                           sql_add_exchange_rate_data)
            db.commit()

        except Exception as e:
            db.rollback()
            print e

def db_close(db):
    db.close()

def parse_table_bs(html):
    values_table = []
    soup = BeautifulSoup(html, 'html.parser')
    for table in soup.findAll("table", { "class" : "generali-table" }):
        header = True
        for row in table.findAll("tr"):
        # Drop table header
            if header:
                header = False
                continue
            cells = row.findAll("td")
            if len(cells) != 3:
                raise Exception('Column number mismatch')
            values_table_row = {'name': cells[0].text.strip(),
                                'rate': cells[1].text.strip(),
                                'sum': cells[2].text.strip(),
                                'date': date.today().isoformat(),
                                'updated': '1999-01-01'}
            values_table.append(values_table_row)

            print values_table_row
    return values_table

def main():
    db = db_connector()
    raw_data = scraper(rates_url)
    vt = parse_table_bs(raw_data)
    db_writer(db, vt)
    db_close(db)
#    if DEBUG:
#        for item in vt:
#            print item

if __name__ == "__main__":
    main()
