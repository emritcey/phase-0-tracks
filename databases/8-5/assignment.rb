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
		create_item(db, "Shirt", Faker::Commerce.color, 2016) 
	end
########################
puts "---------------------"
puts "Great! We will pick #{x} shirts out!"
puts " "
puts "How many pairs of pants would you like?"
	y = gets.chomp.to_i
	y.times do 
		create_item(db, "Pants", Faker::Commerce.color, 2016) 
	end
########################
puts "---------------------"
puts "Great! We will pick #{y} pants out!"
puts " "
puts "How many skirts would you like?"
	z = gets.chomp.to_i
	z.times do 
		create_item(db, "Skirts", Faker::Commerce.color, 2016) 
	end
########################
puts "---------------------"
puts "Great! We will pick #{z} skirts out!"
puts " "
puts "How many pairs of shoes would you like?"
	k = gets.chomp.to_i
	k.times do 
		create_item(db, "Shoes", Faker::Commerce.color, 2016) 
	end
########################
puts "---------------------"
puts " "
wants_to_add = " "

until (wants_to_add == "yes") || (wants_to_add == "no")
	puts "Are there any other items we didn't mention that you would like to add?"
	wants_to_add = gets.chomp.downcase

		if (wants_to_add == "yes") 
			puts "What item would you like to add?"
			add_item = gets.chomp.capitalize
			puts "How many of these would you like?"
			quantity = gets.chomp.to_i
			puts "Great! We will make sure to grab #{quantity} #{add_item}s!"

				quantity.times do 
					create_item(db, "#{add_item}", Faker::Commerce.color, 2016) 
				end

		elsif (wants_to_add == "no")
			puts "Ok we won't add anything else!"

		else
			puts "That was an invalid entry. Please type 'yes' or 'no'."
		end
end

#tell user what they have in thier closet and 
puts "-----------------"
puts "Closet Inventory:"

closet = db.execute("SELECT * FROM closet")
closet.each do |closet|
	puts "#{closet['id']}: 1 -- #{closet['color']} #{closet['clothing_type']}. (purchased: #{closet['year_bought']})"
end 
puts "-----------------"

#################################################
#ask if you want to delete anything
delete = ""

until (delete == "yes") || (delete == "no")
	puts "Would you like to delete anything from your closet? (yes/no)"
	delete = gets.chomp.downcase

		if delete == "yes"
			puts "Which item in the list would you like to delete?"
			rid = gets.chomp
			db.execute("DELETE FROM closet WHERE id = '#{rid}'")
			puts "Ok great, we have deleted number #{rid}!"
				puts "-----------------"
				puts "NEW Closet Inventory:"
				closet = db.execute("SELECT * FROM closet")
				closet.each do |closet|
					puts "#{closet['id']}: 1 -- #{closet['color']} #{closet['clothing_type']}. (purchased: #{closet['year_bought']})"
				end 

		elsif delete == "no"
			puts "Ok! We will leave the list as is!"
		else 
			puts "INVALID ENTRY"
		end
end 

puts "-----------------"
puts "Thank you for playing! We hope you like your new wardrobe!!"
