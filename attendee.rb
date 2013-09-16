class Attendee
  attr_accessor :first_name
  attr_accessor :last_name
  attr_accessor :phone_number

  def initialize(input = {})
    puts "Initializing attendee.rb"
    @first_name = input[:first_name]
    @last_name = input[:last_name]
    # @phone_number = input[:phone_number].gsub(/\D/, "")

    if input[:phone_number]
      @phone_number = input[:phone_number].gsub(/\D/, "")
      if @phone_number.length == 11 && @phone_number.start_with?("1")
        @phone_number = @phone_number[1..-1]
      end
      if @phone_number.length != 10
        @phone_number = "0000000000"
      end
    end


    # if input[:phone_number]
    #   @phone_number = input[:phone_number].gsub(/\D/, "")
    #   case 
    #     when @phone_number.length == 11 && @phone_number[0] == "1" then @phone_number[1..-1]
    #     when @phone_number.length == 10 then @phone_number
    #     else "0000000000"
    #   end
    # end


  end

  # def first_name
  #   @first_name
  # end   
  #same as above
  # attr_reader :first_name 

  # def first_name=(value)
  #   @first_name = value
  # end
  # attr_writer :first_name

  # does both
  # attr_accessor :first_name


end
