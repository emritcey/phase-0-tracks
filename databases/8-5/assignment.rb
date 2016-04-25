#Create a closet with lots of clothes 

#require gems 

require 'sqlite3'
require 'faker'

# create SQLite3 database
db = SQLite3::Database.new("assignment.db")
db.results_as_hash = true

# create table for the closet to hold items 
create_table_cmd = <<-SQL 
	CREATE TABLE IF NOT EXISTS closet (
	id INTEGER PRIMARY KEY,
	clothing_type VARCHAR(255),
	color VARCHAR(255),
	year_bought INT
	)
SQL
 
db.execute(create_table_cmd)

# db.execute("INSERT INTO closet (clothing_type, color, year_bought) VALUES ('skirt', 'pink', 2001)")

puts "Closet Inventory:"

closet = db.execute("SELECT * FROM closet")
closet.each do |closet|
	puts "1 #{closet['color']} #{closet['clothing_type']} from #{closet['year_bought']}."
end 

#prints out lists of all the clothes 
# asks if you want to get rid of any items, maybe 
#goodwill or throw away.
