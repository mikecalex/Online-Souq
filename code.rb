
puts "Welcome, what's your name?"
name = gets.chomp
puts "Hi, #{name}!"

items = ["old paperback book", "potato", "red onion", "dried lemon", "frankincense", "medicinal herbs", "saffron", "glass spice jar", "red fabric",
"orange fabric", "handicrafts", "small Persian rug", "medium Persian rug", "large Persian rug", "extra large Persian rug"]

puts "What would you like to add to your shopping cart?"
print '> '
selection = gets.chomp

cart = []
if items.include?(selection)
  cart << selection
else
  puts "Sorry, we don't have that item."
end

while selection != 'done' do
  puts "Would you like to purchase something else? (If finished type 'done')"
  print '> '
  selection = gets.chomp
  if items.include?(selection)
    cart << selection
  elsif selection == 'done'
    puts "#{name}! thanks for trying our online Souq platform. Here is a list of the items in your cart!:"
    cart.each do |item|
      print ' * '
      puts item
    end
  else
    puts "Sorry, we don't have that item."
  end
end
