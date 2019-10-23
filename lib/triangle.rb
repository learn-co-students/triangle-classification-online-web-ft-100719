require 'pry'

class Triangle
  attr_reader :side1, :side2, :side3
  
  def initialize(side1, side2, side3)
    @all_sides = []
    @side1 = side1
    @side2 = side2
    @side3 = side3
    @all_sides << side1
    @all_sides << side2
    @all_sides << side3
  end #initialize
  
  def kind 
    # First validate that each side > 0 and sum of 2 side > third
    if  @all_sides.any?{|side| side <= 0 } ||
        @side1 + @side2 <= @side3 ||
        @side2 + @side3 <= @side1 ||
        @side3 + @side1 <= @side2
          # raise error 
          begin
            raise TriangleError
            #rescue TriangleError => error
            puts error.message
          end
    else
          num_eq_sides = @all_sides.uniq.length
          case num_eq_sides 
            when 1 
              kind = :equilateral
            when 2 
              kind = :isosceles
            when 3 
              kind = :scalene
          end
          return kind
    end #if
  end#kind
    
  class TriangleError < StandardError
    def message
    "You must specify valid lengths for sides"
    end #message
  end # triangle error
  
end #Triangle
