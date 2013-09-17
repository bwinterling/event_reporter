require 'minitest'
require 'minitest/autorun'
require './attendee'

class AttendeeTest < MiniTest::Test

  # def test_it_exists
  #   attendee = Attendee.new
  #   assert_kind_of Attendee, attendee
  # end

  def test_it_is_initialized_from_a_hash_of_data
    data = {:first_name => 'George', :last_name => 'Washington', :phone_number => '2024556677'}
    attendee = Attendee.new(data)
      assert_equal data[:first_name], attendee.first_name
      assert_equal data[:last_name], attendee.last_name
      assert_equal data[:phone_number], attendee.phone_number
  end

  def test_it_can_change_first_names
    data = {:first_name => "George"}
    attendee = Attendee.new(data)
    assert_equal data[:first_name], attendee.first_name
    attendee.first_name = "Thomas"
    assert_equal "Thomas", attendee.first_name
  end

  def test_it_can_change_last_names
    data = {:last_name => "Washington"}
    attendee = Attendee.new(data)
    assert_equal data[:last_name], attendee.last_name
    attendee.last_name = "Winterling"
    assert_equal "Winterling", attendee.last_name
  end

  def test_it_can_change_phone_numbers
    data = {:phone_number => "3035551212"}
    attendee = Attendee.new(data)
    assert_equal data[:phone_number], attendee.phone_number
    attendee.phone_number = "3106665959"
    assert_equal "3106665959", attendee.phone_number
  end

  def test_it_cleans_phone_numbers_with_periods_and_hyphens
    attendee = Attendee.new(:phone_number => "(202).4 44-9999")
    assert_equal "2024449999", attendee.phone_number
  end

  def test_it_can_change_zipcodes
    data = {:zipcode => "80210"}
    attendee = Attendee.new(data)
    assert_equal data[:zipcode], attendee.zipcode
    attendee.zipcode = "94333"
    assert_equal "94333", attendee.zipcode
  end

  def test_it_adds_zeros_to_short_zipcodes
    attendee = Attendee.new(:zipcode => "6678")
    assert_equal "06678", attendee.zipcode
  end

  def test_it_shortens_long_zipcodes
    attendee = Attendee.new(:zipcode => "802461122")
    assert_equal "80246", attendee.zipcode
  end

end