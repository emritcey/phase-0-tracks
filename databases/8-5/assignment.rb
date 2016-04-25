#require gems 

require 'sqlite3'
require 'faker'

db = SQLite3::Database.new("assignment.db")
# create table for the closet to hold items 
create_table_cmd = <<-SQL 
	CREATE TABLE IF NOT EXISTS closet (
	id INTEGER PRIMARY KEY,
	clothing_type VARCHAR(255),
	color VARCHAR(255),
	year_bought INT,
	)
SQL
 
db.execute(create_table_cmd)