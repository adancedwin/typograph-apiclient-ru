module Typograph
  class Client
    require_relative 'api/type_design'

    attr_reader :text

    def initialize(text="")
      @text = validate_text(text)
    end

    def type_design(text=@text)
      text = validate_text(text) unless text==@text
      Api::Type_design.post_text(text)
    end

    private
    def validate_text(text)
      unless text.is_a?(String)
        raise ArgumentError, "Incorrect argument given - #{text.class}. Must be String!"
      end
      text
    end
  end
end
