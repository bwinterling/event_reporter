require 'minitest'
require 'minitest/autorun'
require './event_reporter'

class EventReporterTest < MiniTest::Test

  def test_load_csv
    reporter = EventReporter.new
    reporter.load_file('event_attendees.csv')
    refute_nil reporter.file_data
  end 

  def test_initial_queue_count_equals_zero
    reporter = EventReporter.new
    zero = 0
    count = reporter.queue.count
    assert_equal count, zero
  end

  test delet th

  def test_help_command
    reporter = EventReporter.new
    help = reporter.process_command("help")   
    refute help.nil?
  end

  def test_find_first_name_john
  end

# queue count should return 63
# queue clear
# queue count should return 0
# help should list the commands
# help queue count should explain the queue count function
# help queue print should explain the printing function



end

