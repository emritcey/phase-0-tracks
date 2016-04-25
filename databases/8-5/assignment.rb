#Create a closet with lots of clothes by asking the user how many they want. 

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

##################################################################
#create method to create random colored items of clothing.
def create_item(db, clothing_type, color, year_bought)
	db.execute("INSERT INTO closet (clothing_type, color, year_bought) VALUES (?, ?, ?)", [clothing_type, color, year_bought])
end
##################################################################
# Ask user, on a loop, what item they would like to create and how many until they say done. 

5.times do 
	create_item(db, "shirt", Faker::Commerce.color, 2016) 
end




#tell user what they have in thier closet and 

puts "-----------------"
puts "Closet Inventory:"

closet = db.execute("SELECT * FROM closet")
closet.each do |closet|
	puts "1 #{closet['color']} #{closet['clothing_type']} from #{closet['year_bought']}."
end 

#prints out lists of all the clothes 
# asks if you want to get rid of any items, maybe 
#goodwill or throw away.

puts "-----------------"

# puts "Would you like to delete anything from your closet?"

# FAKER::Commerce.color