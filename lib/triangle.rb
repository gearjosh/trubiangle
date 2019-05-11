class Triangle
  def initialize(side1, side2, side3)
    array = [side1, side2, side3].sort
    @side1 = array[0]
    @side2 = array[1]
    @side3 = array[2]
  end

  def is_triangle?
    !(@side1 + @side2 <= @side3)
  end

  def is_right_triangle?
    @side1**2 + @side2**2 == @side3**2
  end

  def what_kind_of_triangle
    if !self.is_triangle?
      'not a triangle'
    elsif (@side1 == @side2) & (@side1 == @side3)
      'equilateral'
    elsif (@side1 == @side2) | (@side2 == @side3)
      'isoceles'
    else
      if self.is_right_triangle?
        'right scalene'
      else
        'scalene'
      end
    end
  end
end
