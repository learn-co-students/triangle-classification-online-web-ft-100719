require 'pry'

class Triangle

  attr_reader :len1, :len2, :len3

  def initialize(len1, len2, len3)
    @len1 = len1
    @len2 = len2
    @len3 = len3
    @lengths_array = [len1, len2, len3]
  end

  def test_for_triangle
    if @lengths_array.all?(Numeric)
      if @lengths_array.all?{ |len| len > 0 }
       if (len1 + len2 > len3) && (len2 + len3 > len1) && (len3 + len1 > len2)
          return true
       end
      end
    end 
    false
  end

  def kind
    if !test_for_triangle
      raise TriangleError
    else
      if len1 == len2 && len2 == len3
        :equilateral
      elsif len1 == len2 || len2 == len3 || len1 == len3
        :isosceles
      else
        :scalene
      end
    end
  end

  class TriangleError < StandardError
  end

end
