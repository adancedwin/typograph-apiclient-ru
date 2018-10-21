module Typograph
  require_relative 'validate'
  require_relative 'client'

  class MdashTypograph
    def text(text)
      Typograph::Validate.validate_text(text)
      Typograph::Client.type_design(text)
    end
  end
end
