class Triangle
  
  attr_accessor :side1, :side2, :side3
  
  def initialize(side1, side2, side3)
    @side1 = side1
    @side2 = side2
    @side3 = side3
  end
  
  def kind
    triangle_array = [@side1, @side2, @side3].sort
    
    raise TriangleError, "Illegal Triangle" unless triangle_array[0] > 0
    raise TriangleError, "Illegal Triangle" unless triangle_array[0] + triangle_array[1] > triangle_array[2]
    
    if(@side1 == @side2 && @side2 == @side3 && @side3 == @side1)
      return :equilateral
    elsif(@side1 == @side2 || @side2 == @side3 || @side3 == @side1 )
      return :isosceles
    else
      return :scalene
    end
  end
  
  class TriangleError < StandardError
    def message
      "Illegal Triangle"
    end
  end
  
  
  
end
