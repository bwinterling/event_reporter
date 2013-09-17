require 'minitest'
require 'minitest/autorun'
require './phone_number'

class PhoneNumberTest < MiniTest::Test

  def test_it_can_change_phone_numbers
    data = "3035551212"
    phone = PhoneNumber.new(data)
    assert_equal data, phone.number
    phone.number = "3106665959"
    assert_equal "3106665959", phone.number
  end

  def test_it_cleans_phone_numbers_with_periods_and_hyphens
    phone = PhoneNumber.new("(202).4 44-9999")
    assert_equal "2024449999", phone.number
  end

  def test_it_removes_leading_one_from_an_eleven_digit_phone_number
    phone = PhoneNumber.new("1(202)444.9382")
    assert_equal "2024449382", phone.number
  end

  def test_it_throws_away_phone_numbers_that_are_too_long
    phone = PhoneNumber.new("23334445555")
    assert_equal "0000000000", phone.number
  end

  def test_it_throws_away_phone_numbers_that_are_too_short
    phone = PhoneNumber.new("222333444")
    assert_equal "0000000000", phone.number
  end

end