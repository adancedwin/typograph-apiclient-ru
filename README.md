[![Build Status](https://travis-ci.org/adancedwin/typograph-apiclient-ru.svg?branch=master)](https://travis-ci.org/adancedwin/typograph-apiclient-ru)

# typograph-apiclient-ru
Allows to type design your text with the help of the mdash.ru's API (Russian language)

# How to use it

### 1. Initilize the Client class
You can pass or not pass a text when initilizing a class.
When you initilize a class with a text passed it will be stored for later use in type designing.

```ruby
require_relative 'typograph'
text = Typograph::Client.new("Текст — зафиксированная на носителе человеческая мысль.")
```

### 2. Type design your text
In case you didn't pass your text while initilization of the Client class - you should pass the text with #type_design method now:
```ruby
require_relative 'typograph'
text = Typograph::Client.new()
p result = text.type_design("Текст — зафиксированная на носителе человеческая мысль.")
# => ""<p>Текст&nbsp;&mdash; зафиксированная на&nbsp;носителе человеческая мысль</p>"
```

In case you did - simply use #type_design method and it will work with what text it got from Client's initilization:
```ruby
require_relative 'typograph'
text = Typograph::Client.new("Текст — зафиксированная на носителе человеческая мысль")
p result = text.type_design
# => ""<p>Текст&nbsp;&mdash; зафиксированная на&nbsp;носителе человеческая мысль</p>"
```

### 3. Set up you error handling

```ruby
begin
  text = Typograph::Client.new(nil)
rescue ArgumentError => e
  puts "#{e.message}. Error message rescued!"
end
# => Incorrect argument given - NilClass. Must be String!. Error message rescued!

```
