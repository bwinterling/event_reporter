require './phone_number.rb'
# gets clean phone number

class Attendee
  attr_accessor :first_name
  attr_accessor :last_name
  attr_accessor :zipcode
  # attr_accessor :phone_number

  def initialize(input = {})
    @first_name = input[:first_name]
    @last_name = input[:last_name]
    @phone = PhoneNumber.new(input[:phone_number])
    @zipcode = input[:zipcode].to_s.rjust(5,"0")[0..4]  
  end

  #used these two methods instead of attr_accessor :phone_number
  def phone_number
    @phone.number
  end

  def phone_number=(value)
    @phone = PhoneNumber.new(value)
  end
  
end
