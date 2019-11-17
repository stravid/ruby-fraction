require_relative '../unit_helper'
require 'stravid/fraction'

class DummyTitle < UnitTest
  include Stravid::Fraction

  def test_equality
    assert_equal Fraction.new('0'), Fraction.new('0')
    refute_equal Fraction.new('1'), Fraction.new('0')
  end

  def test_addition_of_zero_and_zero
    assert_equal Fraction.new('0') + Fraction.new('0'), Fraction.new('0')
  end

  def test_addition_of_one_and_zero
    assert_equal Fraction.new('1') + Fraction.new('0'), Fraction.new('1')
  end

  def test_addition_of_one_and_one
    assert_equal Fraction.new('1') + Fraction.new('1'), Fraction.new('2')
  end

  def test_addition_of_one_third_and_one_third
    assert_equal Fraction.new('1/3') + Fraction.new('1/3'), Fraction.new('2/3')
  end
end
