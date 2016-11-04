#require gem
require 'sqlite3'

#create database
db = SQLite3::Database.new("spots.db")

#create table for spots (if it's not there already)
create_table = <<-SQL 
CREATE TABLE IF NOT EXISTS spots (
  id INTEGER PRIMARY KEY,
  name VARCHAR(255),
  type VARCHAR(255),
  borough VARCHAR(255),
  phone VARCHAR(255),
  address VARCHAR(255),
  accessibility VARCHAR(255)
SQL 

db.execute(create_table)