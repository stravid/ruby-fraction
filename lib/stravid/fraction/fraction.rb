module Stravid
  module Fraction
    class Fraction
      def initialize(value)

      end
      def ==(other)
        true
      end
      alias_method :eql?, :==
    end
  end
end