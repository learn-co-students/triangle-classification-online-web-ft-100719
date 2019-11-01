class Triangle
  
  attr_reader :equilateral, :isosceles, :scalene
  
  def initialize(side1, side2, side3)
    @s1 = side1
    @s2 = side2
    @s3 = side3
    
    def kind
      
      if (@s1 <= 0 || @s2 <= 0 || @s3 <= 0) || (@s1 + @s2 <= @s3 || @s2 + @s3 <= @s1 || @s3 + @s1 <= @s2)
        
        raise TriangleError
        
      elsif @s1 == @s2 && @s2 == @s3 && @s3 == @s1
      
        return :equilateral
        
      elsif @s1 == @s2 || @s2 == @s3 || @s3 == @s1
      
        return :isosceles
        
      else
        
        return :scalene
      end
      
    end
    
  end
  
  
  class TriangleError < StandardError
  
  end
  
end