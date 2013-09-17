require 'csv'
require './attendee'

class EventManager

  def initialize(input = nil)
    puts "Initializing event_manager.rb"
    contents = CSV.open "event_attendees.csv", headers: true, header_converters: :symbol
    
  end

  # method 
    contents.each do |row|
      name = row[:first_name]
      zipcode = row[:zipcode]
      puts "#{name} #{zipcode}"
    end


end

