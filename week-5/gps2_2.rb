# Method to create a list
# input: string of items separated by spaces (example: "carrots apples cereal pizza")
# steps: 
  # [fill in any steps here]
  # set default quantity
  # print the list to the console [can you use one of your other methods here?]
# output: [what data type goes here, array or hash?]

# Method to add an item to a list
# input: item name and optional quantity
# steps: 
  # add item and quantity to list
# output: success message

# Method to remove an item from the list
# input: item name
# steps:
  # check to see if item exists in list
  # if it doesn't, do nothing
  # if it does, remove the item 
# output: success / failure message

# Method to update the quantity of an item
# input: item name and optional quantity
# steps: 
  # check to see if item exists in list
  # if it doesn't, add it (use add method)
  # if it does, update quantity accordingly
# output: status message

# Method to print a list and make it look pretty
# input: none 
# steps: print list to console
# output: none

def create_grocery_list(groceries)
	my_groceries = Hash.new
	my_items = groceries.split

	my_items.each do |item|
		my_groceries[item.capitalize] = 1
	end

	print_list(my_groceries)

	return my_groceries
end

def add_item(list, item, quantity = 1)
	list[item.capitalize] = quantity
	puts quantity.to_s + " " + item + "(s) added to grocery list!"
end

def update_quantity(list, item, quantity)
	if list[item] == nil
		add_item(list, item, quantity)
	else
		list[item] = quantity
		puts item + " quantity updated to " + list[item].to_s
	end
end

def remove_item(list, item)
	if list[item] == nil
		puts item + " is not in the grocery list!"
	else
		list.delete(item)
		puts "Removed " + item + " from the list!"
	end
end

def print_list(list)
	puts "***********************************"
	puts "My Grocery List"
	list.each do |item, quantity|
		puts quantity.to_s + " " + item + "(s)"
	end
	puts ""
	puts "'Ever consider what pets must think of"
	puts "us? I mean, here we come back from"
	puts "a grocery store with the most amazing"
	puts "haul - chicken, pork, half a cow. "
	puts "They must think we're the greatest"
	puts "hunters on earth!' -- Anne Tyler"
	puts "***********************************"
end

my_weekly_groceries = create_grocery_list("eggs oatmeal chicken cheese bacon broccoli pizza")
add_item(my_weekly_groceries, "Lemonade", 2)
add_item(my_weekly_groceries, "Tomatoes", 3)
add_item(my_weekly_groceries, "Onions", 1)
add_item(my_weekly_groceries, "Ice_Cream", 4)
remove_item(my_weekly_groceries, "Lemonade")
update_quantity(my_weekly_groceries, "Ice_Cream", 1)
print_list(my_weekly_groceries)
#remove_item(my_weekly_groceries, "Ham")


=begin Create a new list
Add the following items to your list
Lemonade, qty: 2
Tomatoes, qty: 3
Onions, qty: 1
Ice Cream, qty: 4
Remove the Lemonade from your list
Update the Ice Cream quantity to 1
Print out your list (Is this readable and nice looking)?

=begin
my_list = create_grocery_list("eggs oatmeal yogurt")

add_item(my_list, "bananas", 2)

print_list(my_list)

remove_item(my_list, "bananas")

print_list(my_list)
=end

=begin
What did you learn about pseudocode from working on this challenge?
> How to work through the problem using simple logic rather than programming concepts
What are the tradeoffs of using Arrays and Hashes for this challenge?
> I didn't consider using an Array for this challenge, it just didn't make sense to me since the Hash
  data structure seems naturally suited for a grocery list. I suppose if I had to implement my
  solution using an Array, I would put the item and quantity as adjacent values in the Array
What does a method return?
> The last cached value unless you explicitly declare a return statement
What kind of things can you pass into methods as arguments?
> Integers, Arrays, Hashes, Methods, Objects
How can you pass information between methods?
> By calling a method from within a method
What concepts were solidified in this challenge, and what concepts are still confusing?
> Learned more about manipulating hashes, I am still getting the hang of writing pseudocode
	
=end














