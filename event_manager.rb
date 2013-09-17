require 'csv'
require './attendee'
# using attendee class to create input from each attendee

class EventManager

  def initialize(input = nil)
    puts "Initializing event_manager.rb"
    @filename = "event_attendees.csv"
  end

  def load_csv(filename)
    
    if filename.nil?
      puts "No filename given, using default"
      filename = @filename
    else
      filename
    end

    csv_object = CSV.open "#{filename}", headers: true, header_converters: :symbol
    attendees = []
    csv_object.each do |row|
      attendees.push Attendee.new(row)
    end
    attendees
  end



  # method 
    # contents.each do |row|
    #   name = row[:first_name]
    #   zipcode = row[:zipcode]
    #   puts "#{name} #{zipcode}"
    # end


end

