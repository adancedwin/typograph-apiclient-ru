module Typograph
  class Client
    require_relative 'api/type_design'

    def self.type_design(text)
      Api::Type_design.post_text(text)
    end
  end
end
