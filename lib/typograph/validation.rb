module Typograph
  module Validation
    def validate_text(text)

      unless text.is_a?(String)
        raise ArgumentError, "Incorrect argument given - #{text.class}. Must be String!"
      end

      #temprorary stub
      p "Validation passed"
      text
    end
  end
end
