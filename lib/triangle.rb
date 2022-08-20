class Triangle
  # write code here
  attr_reader :a, :b, :c

  def initialize (a, b, c)
    @a= a
    @b= b
    @c= c
  end 
  
  def kind 
    if @a <=0 || @b <=0 || @c <= 0
      raise TriangleError
    elsif @a + @b <= @c || @a + @c <= @b || @b + @c <= @a
      raise TriangleError
    else 
      return :equilateral if @a == @b && @b == @c
      return :isosceles   if @a == @b || @a == @c ||  @b == @c
      return :scalene     if @a != @b && @a != @c &&  @b != @c    
    end   
  end 

  class TriangleError < StandardError
    # triangle error code
  end

    
end
