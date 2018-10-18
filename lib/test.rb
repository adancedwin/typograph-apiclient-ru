require_relative 'typograph'

# begin
#   p tp = Typograph::Client.new(nil)
# rescue ArgumentError => e
#   puts "#{e.message}. Message rescued!"
# end

p tp = Typograph::Client.new("Linux distributions,\nand Mac OS X - dash")
p text = tp.type_design
