require 'suparoo'
require 'yaml'

cart_items = YAML.load_file("./lib/cart_items.yml")

cart_items.each do |title, items|
  cart = ShoppingCart.new
  items_list = ""

  items.each do |sim, qty|
    items_list << "Item: #{sim} x #{qty} \n"
    cart.add sim.to_sym, qty
  end

  puts items_list
  puts "Shopping Cart total: #{cart.total}\n\n"
end
