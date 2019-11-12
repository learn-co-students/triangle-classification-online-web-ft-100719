class Triangle
  
  attr_accessor :side_a, :side_b, :side_c, :type
  
  def initialize(side_a, side_b, side_c)
  
    @side_a = side_a
    @side_b = side_b
    @side_c = side_c
  end
  
  def kind
    
    if self.side_a + @side_b <= @side_c || @side_a + @side_c <= @side_b || @side_b + @side_c <= @side_a || @side_a <= 0 || @side_b <= 0 || self.side_c <= 0 
      raise TriangleError
        begin 
          raise TriangleError
        rescue TriangleError => error 
          puts error.message
        end
      else 
        if @side_a == @side_b && @side_b == @side_c
          return :equilateral
        elsif @side_a == @side_c || @side_a == @side_b || @side_b == @side_c
          return :isosceles
        elsif @side_a != @side_b && @side_a != @side_c && @side_b != @side_c
          return :scalene
        end
      end
  end
  
  class TriangleError < StandardError
    def message
      "All sides of the triangle must be above 0 and two sides must always exceed the third side."
    end
  end
  
end
