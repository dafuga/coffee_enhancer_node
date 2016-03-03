# CoffeeEnhancer

A client side to make using Js and Coffee-script more fun to use.


## Installation

**Setup in Node:**

```Node
npm install 'coffee_enhancer_node'
```

Then follow [this tutorial](http://browserify.org/) to render the library available in your browser:

**Setup in Meteor:**

```Node
npm install 'coffee_enhancer_node'
```
The setup is not as straightforward, so follow [this tutorial](https://react-in-meteor.readthedocs.org/en/latest/client-npm/) to broswerify your library.


## Documentation

**Adds the following methods for coffee/js :**

```coffescript

# Checks if array or string element is present
Array::present()

# Checks if array element is empty
Array::empty()

# Checks if array element is empty
Array::any()

# Formats time to 12 hour clock time
Date::formatted_time_with_pm()

# Formats time to 24 hour clock time
Date::formatted_time()

# Formats date
Date::formatted_date()

# Gives an english string describing the time since datetime stamp
Date::time_ago_in_words()

# Method that checks if a certain variable is undefined or null
non_existent(variable)

# Method that checks if a certain variable is defined and not null
exists(variable)

# Method that checks if a certain variable is defined
defined(variable)

# Method that checks if a certain variable is undefined
not_defined(variable)

# Method that checks if a certain variable is loaded (used in ReactJs mostly)
loaded(variable)

# Checks if number is positive or equal to zero
Number::is_positive()

# Checks if number is equal to zero
Number::is_zero()

# Checks if number is smaller or equal to zero
Number::is_negative()

# Converts to currency
Number::to_currency()

# Converts to string
Number::to_s()

# Converts to integer
Number::to_i()

# Checks if string element is blank
String::blank()

# Checks if string element is empty
String::empty()

# Checks if string element is present
String::present()

# Converts string to integer
String::to_i()
  parseInt(@)

# Converts string to float
String::to_f()

# Converts the first character of string to uppercase and the rest to downcase
String::capitalize()

# Removes whitespaces before and after the content of the string
String::trim()

# Converts the first character of each word to uppercase and the rest to downcase
String::titleize()

```

## Development

After checking out the repo, run `npm install` to install dependencies. Then, run `bundle install && rake jasmine:ci` to run the tests.

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/dafuga/coffee_enhancer_node. This project is intended to be a safe, welcoming space for collaboration, and contributors are expected to adhere to the [Contributor Covenant](http://contributor-covenant.org) code of conduct.


## License

The gem is available as open source under the terms of the [MIT License](http://opensource.org/licenses/MIT).


