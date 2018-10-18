require 'rest-client'
require 'json'

module Typograph
  module Api
    class Type_design
      API_HOST = "http://mdash.ru/api.v1.php"

      def self.send_text(text)
        begin
          p response = RestClient.post(
          API_HOST,
          {:text => text ,:multipart => true}
          )
        rescue RestClient::RequestFailed, SocketError => e #SocketError
          return "Error: #{e.message}"
        end
        if response.code == 200
          response = JSON.parse(response)
          #response = Stringex::Unidecoder.encode(response)
          result = response["result"]
          unless result == "error"
            result
          end
        else
          #response.code
        end
      end
    end
  end
end
