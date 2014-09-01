require 'minitest/autorun'
require_relative 'expedia'

class FindUniqueToFirstArrayTest < MiniTest::Test
  def test_1
    assert_equal [11,4,8,2,6], find_unique_to_first_array_starting_with_first([7,11,4,8,2,3,7,6], [3,7,5,1,7])
  end
  def test_2
    assert_equal [], find_unique_to_first_array_starting_with_first([], [3,7,5,1,7])
  end
  def test_3
    assert_equal [7,11,4,8,2,3,6], find_unique_to_first_array_starting_with_first([7,11,4,8,2,3,7,6], [])
  end
  def test_4
    assert_equal [], find_unique_to_first_array_starting_with_first([], [])
  end
  def test_5
    assert_raises(StandardError) { find_unique_to_first_array_starting_with_first([1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21], [1]) }
  end
  def test_6
    assert_raises(StandardError) { find_unique_to_first_array_starting_with_first([1], [1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21]) }
  end
end

class FindUniqueToFirstArrayTestReverse < MiniTest::Test
  def test_1
    assert_equal [11,4,8,2,6], find_unique_to_first_array_starting_with_second([7,11,4,8,2,3,7,6], [3,7,5,1,7])
  end
  def test_2
    assert_equal [], find_unique_to_first_array_starting_with_second([], [3,7,5,1,7])
  end
  def test_3
    assert_equal [7,11,4,8,2,3,6], find_unique_to_first_array_starting_with_second([7,11,4,8,2,3,7,6], [])
  end
  def test_4
    assert_equal [], find_unique_to_first_array_starting_with_second([], [])
  end
  def test_5
    assert_raises(StandardError) { find_unique_to_first_array_starting_with_second([1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21], [1]) }
  end
  def test_6
    assert_raises(StandardError) { find_unique_to_first_array_starting_with_second([1], [1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21]) }
  end
end
