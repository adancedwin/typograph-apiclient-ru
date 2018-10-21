module Typograph
  class Validate
    def self.validate_text(text)
      unless text.is_a?(String)
        raise ArgumentError, "Incorrect argument given - #{text.class}. Must be String!"
      end
      text
    end
  end
end
