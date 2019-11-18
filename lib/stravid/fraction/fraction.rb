module Stravid
  module Fraction
    class Fraction
      def initialize(value)
        @top, @bottom = value.split('/')

        if @bottom.nil?
          @bottom = 1
        end

        @top = @top.to_i
        @bottom = @bottom.to_i
      end

      def +(other)
        a_bottom = self.bottom
        b_bottom = other.bottom
        a_top = self.top
        b_top = other.top

        if a_bottom != b_bottom
          actual_bottom = a_bottom * b_bottom
          a_top = a_top * b_bottom
          b_top = b_top * a_bottom
        else
          actual_bottom = a_bottom
        end

        new_top = a_top + b_top
        new_bottom = actual_bottom / (new_top.gcd(actual_bottom))
        new_top = new_top / (new_top.gcd(actual_bottom))

        Fraction.new("#{new_top}/#{new_bottom}")
      end

      def ==(other)
        other.top == top
      end
      alias_method :eql?, :==

      protected
      attr_reader :top, :bottom
    end
  end
end
