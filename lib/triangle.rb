class Triangle

attr_accessor :equilateral, :isosceles, :scalene

  def initialize(s1,s2,s3)
    @s1=s1
    @s2=s2
    @s3=s3
  end


  def kind
      if (@s1 <=0 || @s2 <=0 || @s3<=0) || (@s1+ @s2 <= @s3 || @s2+@s3<=@s1 ||@s3+@s1<=@s2)
        # begin
          raise TriangleError
        # rescue TriangleError => error
        #   puts error.message
        # end
      elsif @s1== @s2 &&  @s2== @s3 && @s1 == @s3
        return :equilateral

      elsif @s1 == @s2 ||@s2 == @s3 || @s3==@s1
        return :isosceles

      else
        return :scalene

      end
  end


class TriangleError < StandardError
end






end

# @s1+ @s2 < @s3 || @s2+@s3<@s1 ||@s3+@s1<@s2
# knows that equilateral triangles have equal sides (FAILED - 1)
#   knows that larger equilateral triangles also have equal sides (FAILED - 2)
#   knows that isosceles triangles have last two sides equal (FAILED - 3)
#   knows that isosceles triangles have first and last sides equal (FAILED - 4)
#   knows that isosceles triangles have two first sides equal (FAILED - 5)
#   knows that isosceles triangles have in fact exactly two sides equal (FAILED - 6)
#   knows that scalene triangles have no equal sides (FAILED - 7)
#   knows that scalene triangles have no equal sides at a larger scale too (FAILED - 8)
#   knows that scalene triangles have no equal sides in descending order either (FAILED - 9)
#   knows that very small triangles are legal (FAILED - 10)
#   knows that triangles with no size are illegal (FAILED - 11)
#   knows that triangles with negative sides are illegal (FAILED - 12)
#   knows that triangles violating triangle inequality are illegal (FAILED - 13)
#   knows that triangles violating triangle inequality are illegal 2 (FAILED - 14)
#   knows that triangles violating triangle inequality are illegal 3 (FAILED - 15)
