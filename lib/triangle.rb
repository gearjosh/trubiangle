class Triangle
  def initialize(side1, side2, side3)
    @side1 = side1
    @side2 = side2
    @side3 = side3
  end

  def is_triangle?
    !((@side1 + @side2 <= @side3) | (@side1 + @side3 <= @side2) | (@side3 + @side2 <= @side1))
  end

  def is_right_triangle?
    array = [@side1, @side2, @side3].sort
    array[0]**2 + array[1]**2 == array[2]**2
  end

  def what_kind_of_triangle
    if !self.is_triangle?
      'not a triangle'
    elsif (@side1 == @side2) & (@side1 == @side3)
      'equilateral'
    elsif (@side1 == @side2) | (@side2 == @side3) | (@side1 == @side3)
      if self.is_right_triangle?
        'right isoceles'
      else
        'isoceles'
      end
    elsif (@side1 != @side2) & (@side2 != @side3) & (@side3 != @side1)
      if self.is_right_triangle?
        'right scalene'
      else
        'scalene'
      end
    end
  end
end
