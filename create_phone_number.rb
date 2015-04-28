require 'test/unit'
class PhoneNumber
  def create_phone_number(numbers)
    return '' if numbers.size != 10
    "(#{numbers[0..2].join('')}) #{numbers[3..5].join('')}-#{numbers[6..9].join('')}"
  end

  def best_solution(numbers)
    '(%d%d%d) %d%d%d-%d%d%d%d' % numbers
  end
end

class TestRun < Test::Unit::TestCase

  def test_square
    obj = PhoneNumber.new
    assert_equal (obj.create_phone_number ([1,2,3,4,5,6,7,8,9,1])), "(123) 456-7891"
    assert_equal (obj.best_solution ([1,2,3,4,5,6,7,8,9,1])), "(123) 456-7891"
  end

end