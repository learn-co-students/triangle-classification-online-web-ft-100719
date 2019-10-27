class Triangle
  
  attr_accessor :size1, :size2, :size3
  
  def initialize(size1,size2,size3)
    @size1 = size1
    @size2 = size2
    @size3 = size3
  end
  
  def kind 
    if illegal_triangle == true && no_negative_triangle == true
      true 
    else  
      raise TriangleError
    end
    
    if size1 == size2 && size2 == size3 
      :equilateral
    elsif size1 != size2 && size2 != size3 && size1 != size3 
      :scalene
    else 
      :isosceles
    end
  end
    
    def illegal_triangle
       size1+size2>size3 && size2+size3>size1 && size3+size1>size2
    end
    
    def no_negative_triangle
      size1 > 0 && size2 > 0 && size3 > 0 
    end
    
    class TriangleError < StandardError
    end
end
