require_relative 'credit_card_checker'

describe "#credit_card_checker" do 
  it "return 'Invalid Credit Card' if a string passed is empty" do
   actual = card_checker("")   
   expected = "Invalid Credit Card"
   expect(actual).to eq(expected)
  end

  it "return 'Valid Credit Card number' when passed a string with at least one non-numeric character" do
   actual = card_checker("4242-4242-4242-4242")
   expected = "Valid credit card number"
   expect(actual).to eq(expected)
  end

  it "return 'Invalid Credit Card' when passed a string with at least one non-numeric character" do
    actual = card_checker("4242-4242-4242-4242 3")
    expected = "Invalid Credit Card"
    expect(actual).to eq(expected)
   end

  it "return 'Valid Credit Card number' when passes 4 groups of 4 digits separated by spaces" do
   actual = card_checker("4242 4242 4242 4242")
   expected = "Valid credit card number"
   expect(actual).to eq(expected)
  end

  it "return 'Valid Credit Card number' when passes 4 groups of 4 digits separated by spaces" do
    actual = card_checker("   4242 4 2424 242 4242 ")
    expected = "Valid credit card number"
    expect(actual).to eq(expected)
   end
end