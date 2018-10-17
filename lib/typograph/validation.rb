module Typograph
  module Validation
    def validate_text(text)
      text
      # if text.is_a?(NilClass)
      #     raise ArgumentError, "Given #{text.class}"
      #   elsif text.is_a?(Array)
      #     text = text.sample
      #   elsif text.is_a?(Range)
      #     text = rand(text)
      #   end
      #   if text.is_a?(Integer)
      #     if (text < 1) || (text > 100)
      #       raise Exception.new("text cannot be #{text}, text must be in range of 1-100!")
      #     end
      #   else
      #     raise Exception.new("text must be either an Integer or an Array or a Range value!\n#{text.class} data type is given.")
      #   end
      #   text
    end
  end
end
