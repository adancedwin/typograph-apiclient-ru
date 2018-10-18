module Typograph
  class Client
    include Validation
    require_relative 'api/type_design'

    attr_reader :text

    def initialize(text="")
      @text = validate_text(text)
    end

    def type_design(text=@text)
      Api::Type_design.post_text(text)
    end

  end
end
