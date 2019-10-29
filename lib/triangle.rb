# class Triangle
#   attr_accessor :a, :b, :c

#   def initialize(a, b, c)
#     @a = a
#     @b = b
#     @c = c 
  
#   puts(self.valid?)
#   unless self.valid?
#     raise TriangleError
#     end
#   end

#   def triangle_inequality_valid?(len1, len2, len3)
#     len1 + len2 > len3 && len1 + len3 > len2 &&
#       len2 + len3 > len1
#   end

#   def valid?
#     (a.posititve? && @b.posititve? && @c.posititve?) &&
#     triangle_inequality_valid?(@a, @b, @c)
#   end

#   def kind
#     if @a == @b && @a == @c
#       :equilateral
#     elsif @a == @b || @a == @c || @b == @c   
#       :isosceles
#     else
#       :scalene
#     end
#   end

#   class TriangleError < StandardError
#     def message
#       "Triangle is not valid. Make sure each side is positive and the sum of the
#       lengths of any two sides of a triangle always exceeds the length of the
#       third side."
#     end
#   end



# end
class Triangle
  attr_accessor :side1, :side2, :side3

  def initialize(side1, side2, side3)
    @side1 = side1
    @side2 = side2
    @side3 = side3

    puts(self.valid?)
    unless self.valid?
      raise TriangleError
    end
  end

  def triangle_inequality_valid?(length1, length2, length3)
    length1 + length2 > length3 && length1 + length3 > length2 &&
      length2 + length3 > length1
  end

  def valid?
    (@side1.positive? && @side2.positive? && @side3.positive?) &&
      triangle_inequality_valid?(@side1, @side2, @side3)
  end

  def kind
    if @side1 == @side2 && @side1 == @side3
      :equilateral
    elsif @side1 == @side2 || @side1 == @side3 || @side2 == @side3 
      :isosceles
    else
      :scalene
    end
  end

  class TriangleError < StandardError
    def message
      "Triangle is not valid. Make sure each side is positive and the sum of the
       lengths of any two sides of a triangle always exceeds the length of the
       third side."
    end
  end
end