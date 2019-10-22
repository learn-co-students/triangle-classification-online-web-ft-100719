class Triangle
  
  def initialize(side_1, side_2, side_3)
    @side_1 = side_1
    @side_2 = side_2
    @side_3 = side_3
  end 
  
  def kind 
    if @side_1 <= 0 || @side_2 <= 0 || @side_3 <= 0
      raise TriangleError
      return nil 
   elsif @side_1 + @side_2 <= @side_3 || @side_2 + @side_3 <= @side_1 || @side_1 + @side_3 <= @side_2
      raise TriangleError
      return nil
    elsif @side_1 == @side_2 && @side_1 == @side_3 
      return :equilateral
      elsif @side_1 == @side_2 || @side_2 == @side_3 || @side_1 == @side_3
      return :isosceles
    elsif @side_1 > 0 && @side_2 > 0 && @side_3 > 0 
      return :scalene
    end 
    raise TruangleError
  end 
 

 class TriangleError < StandardError 
  end
end