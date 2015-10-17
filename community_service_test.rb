require_relative "community_service.rb"
require "minitest/autorun"

class Risk_management < Minitest::Test

def test_hours_remaining_equal_assigned_minus_completed
assert_equal(18.75,hours_remaining("75","56.25"))
end

def test_insured_data_exist
puts 'data'
end

def test_days_remaining
assert_equal(-31,days_remaining("16/09/2015","17/10/2015"))
end

end

