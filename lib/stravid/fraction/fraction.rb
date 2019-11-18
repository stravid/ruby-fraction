module Stravid
  module Fraction
    class Fraction
      def initialize(value)
        @numerator, @denominator = value.split('/')

        if @denominator.nil?
          @denominator = 1
        end

        @numerator = @numerator.to_i
        @denominator = @denominator.to_i
      end

      def +(other)
        a_denominator = self.denominator
        b_denominator = other.denominator
        a_numerator = self.numerator
        b_numerator = other.numerator

        if a_denominator != b_denominator
          actual_denominator = a_denominator * b_denominator
          a_numerator = a_numerator * b_denominator
          b_numerator = b_numerator * a_denominator
        else
          actual_denominator = a_denominator
        end

        new_numerator = a_numerator + b_numerator
        new_denominator = actual_denominator / (new_numerator.gcd(actual_denominator))
        new_numerator = new_numerator / (new_numerator.gcd(actual_denominator))

        Fraction.new("#{new_numerator}/#{new_denominator}")
      end

      def ==(other)
        other.numerator == numerator
      end
      alias_method :eql?, :==

      protected
      attr_reader :numerator, :denominator
    end
  end
end
