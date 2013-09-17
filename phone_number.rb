class PhoneNumber
  attr_accessor :number

  def initialize(number = nil)

    if number
      @number = number.gsub(/\D/, "")
      if @number.length == 11 && @number.start_with?("1")
        @number = @number[1..-1]
      end
      if @number.length != 10
        @number = "0000000000"
      end
    end

  end

end
