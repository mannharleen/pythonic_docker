import records


def main():
    db = records.Database('mysql+pymysql://root:<password>@<ip>:3306/')
    rows = db.query("select * from mysql.user")
    l = list(row.User for row in rows)
    print (l)


if __name__ == '__main__':
    main()
