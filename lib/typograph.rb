TYPOGRAPH_PATH = File.dirname(__FILE__) + '/typograph/'

require_relative TYPOGRAPH_PATH + 'validation'
require_relative TYPOGRAPH_PATH + 'client'

require_relative TYPOGRAPH_PATH + 'api/type'

require 'rest-client'
require 'json'


#p path = TYPOGRAPH_PATH + 'api/type.rb'
tp = Client.new("This does two things for you ")
p result = tp.send_text
