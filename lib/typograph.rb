require 'rest-client'
require 'json'

class Typograph
  API_HOST = "http://mdash.ru/api.v1.php?text="

  def send_text(text)
    validate_text(text)
    full_url = API_HOST + URI.encode(text)
    begin
      #response = RestClient.get(full_url)
      response = RestClient::Request.execute(method: :get, url: full_url, timeout: 15)
    rescue SocketError
      puts "Can't connect to the typograph service - service possibly unavailable"
      return text
    rescue
      RestClient::Exceptions::OpenTimeout
      puts "Can't connect to the typograph service - connection timeout"
      return text
    end
    if response.code == 200
      response = JSON.parse(response)
    else
      #response.code
    end
  end

  def validate_text(text)
  end

end

tp = Typograph.new
p result = tp.send_text("Тестовый - \"текст\"")
