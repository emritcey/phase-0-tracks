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
#USER INTERFACE SECTION
# Ask user, on a loop, what item they would like to create and how many until they say done. 
puts "----------------------------------------------------"
puts "Hi! Welcome to Closet Master! We are here to build a closet for you so you don't have to!!"
puts "We will prompt you, and then just let us know how many of each item you want!"
puts "----------------------------------------------------"
puts "Ok! Let's get started! How many shirts would you like?"
	x = gets.chomp.to_i
	x.times do 
		create_item(db, "shirt", Faker::Commerce.color, 2016) 
	end
########################
puts "---------------------"
puts "Great! We will pick #{x} of shirts out!"
puts "How many pairs of pants would you like?"
	y = gets.chomp.to_i
	y.times do 
		create_item(db, "pants", Faker::Commerce.color, 2016) 
	end
########################
puts "---------------------"
puts "Great! We will pick #{y} of pants out!"
puts "How many skirts would you like?"
	z = gets.chomp.to_i
	z.times do 
		create_item(db, "skirts", Faker::Commerce.color, 2016) 
	end
########################
puts "---------------------"
puts "Great! We will pick #{z} of skirts out!"
puts "How many pairs of shoes would you like?"
	k = gets.chomp.to_i
	k.times do 
		create_item(db, "shoes", Faker::Commerce.color, 2016) 
	end
########################


#tell user what they have in thier closet and 
puts "-----------------"
puts "Closet Inventory:"

closet = db.execute("SELECT * FROM closet")
closet.each do |closet|
	puts "1 -- #{closet['color']} #{closet['clothing_type']} from #{closet['year_bought']}."
end 
puts "-----------------"


# puts "Would you like to delete anything from your closet?"

# FAKER::Commerce.color