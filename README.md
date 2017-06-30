# Mobile Sim Shopping Cart

This is a non GUI ruby application that provides a shopping cart experience. <br/>

Application runs well with ruby versions 2.x.

## Test Scenarios and total price

Inputs are read from a YAML file, `/lib/cart_items.yml`.

The following are an example of shopping cart tests with the expected outcome.

* 3 x Unlimited 1GB + 1 Unlimited 5GB => `$94.70`
* 2 x Unlimited 1GB + 4 Unlimited 5GB => `$209.40`
* 1 x Unlimited 1GB + 2 Unlimited 2GB + 2 1GB Data Pack => `$84.70`
* 1 x Unlimited 1GB + 1 1GB Data Pack + Promo code => `$31.32`

## Instructions to get things started

* Download directory to a location
* On the CLI move to the directory
* While on the project directory run `bundle` to install RSpec
* While still on the CLI run `ruby main.rb`
