require './event_manager'

class EventReporter

  def initialize
    puts 'Initializing Event Reporter'
  end

  def run
    input = ""
    while input != "q"
      puts ""
      printf "enter command: "
      input   = gets.chomp
      parts   = input.split(" ")
      command = parts[0]
      process_command(command, parts)
    end
  end

  #process_command method
  def process_command(command, parts)    
    case command
      when "help"  then puts help
      when "q"     then puts "Goodbye!"
     # queue count
     # queue clear
     # queue print
     # queue print by attribute
     # queue save to filename.csv
     # find attr criteria
     #

      # when "s"     then puts shorten_url(parts[1])
      # when "t"     then tweet(parts[1..-1].join(" "))
      # when "klout" then klout_score
      # when "turl"  then tweet_with_url(parts[1..-1])
      # when "dm"    then dm(parts[1], parts[2..-1].join(" "))
      # when "spam"  then spam_my_followers(parts[1..-1].join(" "))
      # when "elt"   then everyones_last_tweet
      
    else
      puts "Sorry, I don't know to #{command}"
    end
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

end

reporter = EventReporter.new
reporter.run
