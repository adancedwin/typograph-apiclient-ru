module Typograph
  class Client
    include Validation
    include Type

    def initialize(text)
      @text = Validation::validate_text(text)
    end
  end
end
