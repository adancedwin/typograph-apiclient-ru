require 'json'
require 'httparty'
require 'net/http'
require 'rest-client'

class Typograph
  #include HTTParty
  API_HOST = "http://mdash.ru/api.v1.php?text="

  def send_text(text)
    validate_text(text)
    response = RestClient.get(API_HOST + URI.encode(text))
    response = JSON.parse(response)
  end

  def validate_text(text)
  end

end

tp = Typograph.new
p result = tp.send_text("Тестовый - текст")
