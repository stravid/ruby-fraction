require_relative '../unit_helper'
require 'stravid/fraction'

class DummyTitle < UnitTest
  include Stravid::Fraction

  def test_equality
    assert_equal Fraction.new('0'), Fraction.new('0')
  end

  def test_addition_of_zero
    assert_equal Fraction.new('0') + Fraction.new('0'), Fraction.new('0')
  end
end
