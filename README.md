[![Build Status](https://travis-ci.org/adancedwin/typograph-apiclient-ru.svg?branch=master)](https://travis-ci.org/adancedwin/typograph-apiclient-ru)
[![Gem Version](https://badge.fury.io/rb/typograph-apiclient-ru.svg)](https://badge.fury.io/rb/typograph-apiclient-ru)

# typograph-apiclient-ru
Allows to type design your text with the help of the mdash.ru's API (Russian language).
Can be installed as a gem:
```
gem install typograph-apiclient-ru
```

# How to use it

### 1. Type design your text
In case you didn't pass your text while initialization of the Client class - you should pass the text with #type_design method now:
```ruby
require_relative 'typograph'
typograph = Typograph::MdashTypograph.new
p formatted_text = typograph.text("Текст — зафиксированная на носителе человеческая мысль.")
# => "<p>Текст&nbsp;&mdash; зафиксированная на&nbsp;носителе человеческая мысль.</p>"
```

### 2. Set up your error handling

```ruby
require_relative 'typograph'
typograph = Typograph::MdashTypograph.new
begin
  formatted_text = typograph.text(nil)
rescue ArgumentError => e
  puts "#{e.message}. Error message rescued!"
end
# => Incorrect argument given - NilClass. Must be String!. Error message rescued!

```
