class Triangle
  
  attr_accessor :f_side, :s_side, :t_side
  
  def initialize(f_side, s_side, t_side)
    @sides = []
    @sides << f_side
    @sides << s_side
    @sides << t_side
  end
  
  def valid_triangle?
    sum_f_s = @sides[0] + @sides[1]
    sum_s_t = @sides[1] + @sides[2]
    sum_f_t = @sides[0] + @sides[2]
    
    if (@sides.all? {|side| side > 0}) && (sum_f_s > @sides[2] && sum_f_t > @sides[1] && sum_s_t > @sides[0])
      true
    else
      false
    end
  end
  
  def kind
    if valid_triangle?
      if @sides.uniq.length == 2
        return :isosceles
      elsif @sides.uniq.length == 1 
        return :equilateral
      else
        return :scalene
      end
    else
      raise TriangleError
    end
  end
    
  
  class TriangleError < StandardError
  
  end
  
end
