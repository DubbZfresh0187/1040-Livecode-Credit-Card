def card_checker(credit_card_number)
  digits = credit_card_number.gsub(/\D/, "")
  credit_card_pattern = /\A\d{16}\z/
  digits.match?(credit_card_pattern) ? "Valid credit card number" : "Invalid Credit Card"
end