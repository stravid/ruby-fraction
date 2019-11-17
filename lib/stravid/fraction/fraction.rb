module Stravid
  module Fraction
    class Fraction
      def initialize(value)
        @value = value
      end

      def +(other)
        other
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
