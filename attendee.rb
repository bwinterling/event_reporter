require './phone_number.rb'

class Attendee
  attr_accessor :first_name
  attr_accessor :last_name
  # attr_accessor :phone_number

  def initialize(input = {})
    @first_name = input[:first_name]
    @last_name = input[ :last_name]
    @phone = PhoneNumber.new(input[:phone_number])
  end

  def phone_number
    @phone.number
  end

  def phone_number=(value)
    @phone = PhoneNumber.new(value)
  end
  
end
