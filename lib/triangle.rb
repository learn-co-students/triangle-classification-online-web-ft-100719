class Triangle
  # write code here
  attr_accessor :a, :b, :c, :type
  def initialize(a, b, c)
    @a = a
    @b = b
    @c = c
  end

  def kind
    @type
    if (@a <= 0 || @b <= 0 || @c <= 0) || (@a + @b <= @c) || (@a + @c <= @b) || (@b + @c <= @a)
      begin
        raise TriangleError
        puts error.message
      end
    elsif (@a == @b && @a != @c) || (@a == @c && @a != @b) ||(@b == @c && @b != @a)
      @type = :isosceles
      @type
    elsif @a == @b && @a == @c
      @type = :equilateral
      @type
    elsif @a != @b && @a != @c && @b != @c
      @type = :scalene
      @type
    end
  end

  class TriangleError < StandardError

    def message
      "this is not a valid triangle!"
    end
  end
end
