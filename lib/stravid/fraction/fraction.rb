module Stravid
  module Fraction
    class Fraction
      def initialize(value)
        @value = value
      end

      def +(other)
        new_value = value.to_i + other.value.to_i
        Fraction.new(new_value.to_s)
      end

      def ==(other)
        other.value == value
      end
      alias_method :eql?, :==

      protected
      attr_reader :value
    end
  end
end
