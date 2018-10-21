require_relative '../lib/typograph'
require_relative 'data/test_data'

describe Typograph::Client do
  context "Testing with valid input to get type desinged text" do
      typograph = Typograph::MdashTypograph.new
      it "Should type design the passed text if mdash.ru's API is available" do
      formatted_text = typograph.text(Test_data::TEST_TEXT)
      expect(formatted_text).to eql "<p>Текст&nbsp;&mdash; зафиксированная на&nbsp;носителе человеческая мысль.</p>"
    end
  end

  context "Testing with invalid input to get type desinged text" do
    it "Should raise ArgumentError for passing nil to the #text method" do
      nil_text = nil
      typograph = Typograph::MdashTypograph.new
      expect{
        formatted_text = typograph.text(nil_text)
      }.to raise_error(ArgumentError, "Incorrect argument given - #{nil_text.class}. Must be String!")
    end
  end
end
