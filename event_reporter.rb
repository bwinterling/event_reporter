require './event_manager'
# to process csv into usable format

class EventReporter

  def initialize
    puts 'Initializing Event Reporter'
  end

  def run

    puts "Welcome to the Brian and George Amazing Event Reporter!!"
    input = ""
    while input != "q"
      puts ""
      printf "enter command:"
      input = gets.chomp
      process_command(input)
    end  

  end

  # #process_command method
  def process_command(input)
    parts = input.split(" ")
    command = parts[0]    
    case command
      when "help"  then puts help
      when "q"     then puts "Goodbye!"
      when "queue" then which_queue(parts[1..-1])
      when "load"  then load_file(parts[1])
     # queue count
     # queue clear
     # queue print
     # queue print by attribute
     # queue save to filename.csv
     # find attr criteria
     # 
    else
      puts "Sorry, I don't know to #{command}"
    end

  #end of process command
  end

  def load_file(filename)
    puts "Loading file: #{filename}"
    manager = EventManager.new
    @file_data = manager.load_csv(filename)

  end

  def which_queue(parts)
    puts "Queue command #{parts}"
  end

  def help
    """
    == DESCRIPTION

    Event Reporter is a terminal client, built by Brian and George  

    == COMMAND SYNTAX
    command content_1 content_2 (no special characters required)

    == COMMANDS
    q                  :: Quit this application
    help               :: View help information
    """
  end

# end of class
end

reporter = EventReporter.new
reporter.run