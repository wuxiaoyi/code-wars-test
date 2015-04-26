require 'test/unit'
class CheckSquare

  #my_solution
  def check_square(x)
    res = x ** (1.0/2)
    res.to_s.split('.')[1] == '0'
  end

  def best_solution
    x < 0 ? false : Math.sqrt(x) % 1 == 0
  end

end

class TestRun < Test::Unit::TestCase

  def test_square
    obj = CheckSquare.new
    assert_equal (obj.check_square (-1)), false, "-1 is not a perfect square"
    assert_equal (obj.check_square  3),   false,  "3 is not a perfect square"
    assert_equal (obj.check_square  4),    true,   "4 is a perfect square (2 * 2)"
    assert_equal (obj.check_square 25),    true,  "25 is a perfect square (5 * 5)"
    assert_equal (obj.check_square 26),   false, "26 is not a perfect square"
  end

end
