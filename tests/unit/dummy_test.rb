require_relative '../unit_helper'
require 'stravid/fraction'

class DummyTitle < UnitTest
  include Stravid::Fraction

  def test_equality
    assert_equal Fraction.new('0'), Fraction.new('0')
  end

  def test_addition_of_zero_and_zero
    assert_equal Fraction.new('0') + Fraction.new('0'), Fraction.new('0')
  end

  def test_addition_of_one_and_zero
    assert_equal Fraction.new('1') + Fraction.new('0'), Fraction.new('1')
  end
end
