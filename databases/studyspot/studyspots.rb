#require gem
require 'sqlite3'

#create database
db = SQLite3::Database.new("spots.db")

#create table for spots (if it's not there already)
create_table = <<-SQLS
CREATE TABLE IF NOT EXISTS spots(
  id INTEGER PRIMARY KEY,
  name VARCHAR(255),
  type VARCHAR(255),
  borough VARCHAR(255),
  phone VARCHAR(255),
  address VARCHAR(255),
  accessibility VARCHAR(255)
  )
SQLS

db.execute(create_table)

#constant study spots data

data = <<-TESTDATA
insert or ignore into spots (id, name, type, borough, phone, address, accessibility) values(1, "Stapleton Library", "Library", "Staten Island", "(718) 727-0427", "132 Canal St", "Fully Accessible")
TESTDATA

db.execute(data)

data2 = <<-TESTDATA2
insert or ignore into spots (id, name, type, borough, phone, address, accessibility) values(2, "Starbucks", "Coffee Shop", "Staten Island", "(718) 273-5984", "480 Forest Ave", "Unknown")
TESTDATA2

db.execute(data2)

data3 = <<-TESTDATA3
insert or ignore into spots (id, name, type, borough, phone, address, accessibility) values(3, "Port Richmond Library", "Library", "Staten Island", "(718) 442-0158", "75 Bennett Street", "Partially Accessible")
TESTDATA3

db.execute(data3)

data4 = <<-TESTDATA4
insert or ignore into spots (id, name, type, borough, phone, address, accessibility) values(4, "Parkchester Library", "Library", "Bronx", "(718) 829-7830", "1985 Westchester Avenue", "Fully Accessible")
TESTDATA4

db.execute(data4)

data5 = <<-TESTDATA5
insert or ignore into spots (id, name, type, borough, phone, address, accessibility) values(5, "Tremont Library", "Library", "Bronx", "(718) 299-5177", "1866 Washington Avenue", "Fully Accessible" )
TESTDATA5

db.execute(data5)

data6 = <<-TESTDATA6
insert or ignore into spots (id, name, type, borough, phone, address, accessibility) values(6, "Brew Coffehouse", "Coffee Shop", "Bronx", "(718) 684-3302", "3217 Philip Ave", "Unknown")
TESTDATA6

db.execute(data6)

data7 = <<-TESTDATA7
insert or ignore into spots (id, name, type, borough, phone, address, accessibility) values(7, "Queens Library at Flushing", "Library", "Queens", "(718) 661-1200", "41-17 Main Street", "Unknown")
TESTDATA7

db.execute(data7)

data8 = <<-TESTDATA8
insert or ignore into spots (id, name, type, borough, phone, address, accessibility) values(8, "Bushwick Library", "Library", "Brooklyn", "(718) 602-1348", "340 Bushwick Ave", "Fully Accessible")
TESTDATA8

db.execute(data8)

data9 = <<-TESTDATA9
insert or ignore into spots (id, name, type, borough, phone, address, accessibility) values(9, "Stephen A. Schwarzman Building", "Library", "Manhattan", "(917) 275-6975", "476 Fifth Avenue", "Fully Accessible")
TESTDATA9

db.execute(data9)

data10 = <<-TESTDATA10
insert or ignore into spots (id, name, type, borough, phone, address, accessibility) values(10, "Caffe Bene", "Coffee Shop", "Brooklyn", "(718) 921-2400", "8614 5th Ave", "Fully Accessible")
TESTDATA10

db.execute(data10)

data11 = <<-TESTDATA11
insert or ignore into spots (id, name, type, borough, phone, address, accessibility) values(11, "Idea Coffee", "Coffee Shop", "Manhattan", "(646) 896-1533", "246 5th Ave", "Unknown")
TESTDATA11

db.execute(data11)

data12 = <<-TESTDATA12
insert or ignore into spots (id, name, type, borough, phone, address, accessibility) values(12, "Bean & Bean", "Coffee Shop", "Manhattan", "(646) 869-2070", "318 8th Ave", "Unknown")
TESTDATA12

db.execute(data12)

data13 = <<-TESTDATA13
insert or ignore into spots (id, name, type, borough, phone, address, accessibility) values(13, "Sit & Wonder", "Coffee Shop", "Brooklyn", "(718) 622-0299", "688 Washington Ave", "Fully Accessible")
TESTDATA13

db.execute(data13)

data14 = <<-TESTDATA14
insert or ignore into spots (id, name, type, borough, phone, address, accessibility) values(14, "Usagi NY", "Coffee Shop", "Brooklyn", "(718) 801-8037", "163 Plymouth St", "Fully Accessible")
TESTDATA14

db.execute(data14)

data15 = <<-TESTDATA15
insert or ignore into spots (id, name, type, borough, phone, address, accessibility) values(15, "Cafe de Cupping", "Coffee Shop", "Queens", "(718) 909-0777", "150-17 Northern Blvd", "Fully Accessible")
TESTDATA15

db.execute(data15)












