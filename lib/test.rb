require_relative 'typograph'

# begin
#   p tp = Typograph::Client.new(nil)
# rescue ArgumentError => e
#   puts "#{e.message}. Message rescued!"
# end

p tp = Typograph::Client.new("Текст — зафиксированная на каком-либо материальном носителе человеческая мысль;\nв общем плане связная и полная последовательность символов.")
p text = tp.type_design