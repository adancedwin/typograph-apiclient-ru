 require 'rest-client'
require 'json'

module Typograph
  module Api
    class Type_design
      API_HOST = "http://mdash.ru/api.v1.php".freeze

      def self.post_text(text)
        begin
          p response = RestClient.post(
          API_HOST,
          {:text => text,:multipart => true}
          )
        rescue RestClient::RequestFailed, SocketError => e
          return "Error: #{e.message}"
        end
        response = JSON.parse(response)
        result = response["result"]
        unless result == "error"
          result
        else
          text
        end
      end
    end
  end
end
