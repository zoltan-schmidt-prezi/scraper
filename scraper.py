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

def db_main_writer(db, data):

    cursor = db.cursor()
    cursor.execute('SET NAMES utf8;')
    cursor.execute('SET CHARACTER SET utf8;')
    cursor.execute('SET character_set_connection=utf8;')

    sql_add_exchange_rate_query = """INSERT INTO main_exchange(id, date,
                                       updated, name, rate, sum, currency)
                                       VALUES(%s, %s, %s, %s, %s, %s, %s)"""

    for item in data:
        sql_add_exchange_rate_data = (item['id'],
                                    item['date'],
                                    item['updated'],
                                    item['name'],
                                    item['rate'],
                                    item['sum'],
                                    item['currency'])

        try:
            cursor.execute(sql_add_exchange_rate_query,
                           sql_add_exchange_rate_data)
            db.commit()

        except Exception as e:
            db.rollback()
            print e

def db_selector_writer(db, data):

    cursor = db.cursor()
    cursor.execute('SET NAMES utf8;')
    cursor.execute('SET CHARACTER SET utf8;')
    cursor.execute('SET character_set_connection=utf8;')
    sql_add_selector_query = """INSERT INTO selector(id, name)
                                    VALUES(%s, %s)"""

    for item in data:
        sql_add_selector_data = (item['id'],
                                item['name'])

        try:
            cursor.execute(sql_add_selector_query,
                            sql_add_selector_data)
            db.commit()

        except Exception as e:
            db.rollback()
            print e

def db_close(db):
    db.close()

def make_soup(html):
    return BeautifulSoup(html, 'html.parser')

def parse_soup_for_date(soup):
    updated = soup.find("div", attrs={"class": "accordion", "id": "exchangeaccordion"})
    match = re.search(r"^.*?(\d{4})\.(\d{2})\.(\d{2})\..*$", updated.h3.text.strip())
    if match:
        rates_updated = "-".join([match.group(1), match.group(2), match.group(3)])
    else:
        rates_updated = "1999-01-01"
    return rates_updated

def parse_soup_for_rates(soup):
    all_table_entries = []
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
            one_entry_dict = {
                        'id': abs(hash(cells[0].text.strip())) % (10 ** 8),
                        'name': cells[0].text.strip(),
                        'rate': cells[1].text.strip(),
                        'sum': cells[2].text.strip(),
                        'date': date.today().isoformat(),
                        'updated': '',
                        'currency': ''}
            all_table_entries.append(one_entry_dict)
    return all_table_entries

def process_input_data(table, rates_date):
    for row in table:
        # Convert names from cp1252 to utf-8
        row['name'] = row['name'].encode('UTF-8')
        # Remove currencu and convert rates to proper float
        temp_rate = float(row['rate'].split()[0].replace(',','.'))
        temp_curr = row['rate'].split()[1]
        row['rate'] = temp_rate
        row['currency'] = temp_curr
        # Remove currency
        row['sum'] = ''.join(row['sum'].split())[:-3]
        row['updated'] = rates_date
    return table

def main():
    db = db_connector()
    
    raw_data = scraper(rates_url)
    
    soup = make_soup(raw_data)
    
    rates_date = parse_soup_for_date(soup)
    input_table = parse_soup_for_rates(soup)
    processed_table = process_input_data(input_table, rates_date)

    db_selector_writer(db, processed_table)
    db_main_writer(db, processed_table)
    db_close(db)
"""    if DEBUG:
        for item in processed_table:
            print item
"""
if __name__ == "__main__":
    main()
