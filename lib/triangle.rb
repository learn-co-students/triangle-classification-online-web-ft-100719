class Triangle
  attr_accessor :a, :b, :c
  
  def initialize(a, b, c)
   @a = a 
   @b = b 
   @c = c
  end
  
  def kind
     if triangle_1 == true && valid_triangle == true
        true
     else 
        raise TriangleError
     end
      
     if a ==b && b == c 
       :equilateral 
     elsif 
      a != b && b != c && a != c
       :scalene
     else
       :isosceles
     end
  end
  
  def triangle_1
     a > 0 && b > 0 && c > 0 
  end
  
  def valid_triangle 
    a + b > c && a + c > b && b + c > a
  end
  
  class TriangleError < StandardError
 
  end
end
