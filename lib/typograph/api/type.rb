module Typograph
  module Type
    API_HOST = "http://mdash.ru/api.v1.php"

    def send_text(text)
      validate_text(text)
      begin
        p response = RestClient.post(
        API_HOST,
        {:text => text ,:multipart => true}
        )
      rescue RestClient::RequestFailed, SocketError => e #SocketError
        return "#{e.message}"
      end
      if response.code == 200
        response = JSON.parse(response)
        unless response == "error"
          response
      else
        #response.code
      end
    end
  end
end
