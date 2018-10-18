require_relative '../lib/typograph'
require_relative 'data/test_data'

describe Typograph::Client do
  context "Testing with valid input to get type desinged text" do
    it "Should create a Client class and store an accessible text value" do
      text = Typograph::Client.new(Test_data::TEST_TEXT)
      expect(text.text).to eql Test_data::TEST_TEXT
    end

    it "Should successfully proccess type design with API host" do
      text = Typograph::Client.new
      result = text.type_design(Test_data::TEST_TEXT)
    end
  end

  context "Testing with invalid input to get type desinged text" do
    it "Should raise ArgumentError for passing nil when initializing of Client class" do
      nil_text = nil
      expect{
        text = Typograph::Client.new(nil_text)
      }.to raise_error(ArgumentError, "Incorrect argument given - #{nil_text.class}. Must be String!")
    end

    it "Should raise ArgumentError for passing nil to the #type_design method" do
      nil_text = nil
      text = Typograph::Client.new
      expect{
        result = text.type_design(nil_text)
      }.to raise_error(ArgumentError, "Incorrect argument given - #{nil_text.class}. Must be String!")
    end
  end
end
