require_relative '../unit_helper'
require 'stravid/fraction'

class DummyTitle < UnitTest
  include Stravid

  def test_dummy
    assert_equal Fraction.new('1/2') + Fraction.new('1/2'), Fraction.new('1/1')
  end
end
