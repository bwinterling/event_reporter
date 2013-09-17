require 'minitest'
require 'minitest/autorun'
require './event_reporter'

class EventReporterTest < MiniTest::Test
  def test_help_command
    reporter = EventReporter.new.process_command("help")
  end



#load event_attendees.csv
  # def test_load_csv
  #   #does csv object exist within event_reporter
  #   @loaded_csv 
  #   assert #
  # end 

# queue count should return 0
  # def test_initial_queue_count_equals_zero

  # end

# find first_name John
# queue count should return 63
# queue clear
# queue count should return 0
# help should list the commands
# help queue count should explain the queue count function
# help queue print should explain the printing function



end

