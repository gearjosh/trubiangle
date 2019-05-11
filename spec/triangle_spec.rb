require 'rspec'
require 'triangle'
require 'pry'

describe 'Triangle#is_triangle?' do
  it 'returns false if two sides add up to the third side or more' do
    triangle = Triangle.new(1, 2, 5)
    expect(triangle.is_triangle?).to(eq(false))
  end

  it 'returns false if two sides add up to the third side or more' do
    triangle = Triangle.new(2, 1, 5)
    expect(triangle.is_triangle?).to(eq(false))
  end

  it 'returns false if two sides add up to the third side or more' do
    triangle = Triangle.new(5, 2, 1)
    expect(triangle.is_triangle?).to(eq(false))
  end
end

describe 'Triangle#is_right_triangle?' do
  it 'returns true if the sum of the squares of the two smallest sides equals the square of the third side' do
    triangle = Triangle.new(3, 5, 4)
    expect(triangle.is_right_triangle?).to(eq(true))
  end
end

describe 'Triangle#is_triangle?' do
  it 'returns equilateral if all sides are equal' do
    triangle = Triangle.new(2, 2, 2)
    expect(triangle.what_kind_of_triangle).to(eq('equilateral'))
  end

  it 'returns isoceles if only two sides are equal' do
    triangle = Triangle.new(2, 2, 3)
    expect(triangle.what_kind_of_triangle).to(eq('isoceles'))
  end

  it 'returns right scalene if only two sides are equal and it is a right triangle' do
    triangle = Triangle.new(5, 4, 3)
    expect(triangle.what_kind_of_triangle).to(eq('right scalene'))
  end

  it 'returns scalene if no sides are equal and it is not a right triangle' do
    triangle = Triangle.new(2, 4, 3)
    expect(triangle.what_kind_of_triangle).to(eq('scalene'))
  end

  it 'returns not a triangle if it is not a triangle' do
    triangle = Triangle.new(1, 2, 5)
    expect(triangle.what_kind_of_triangle).to(eq('not a triangle'))
  end
end
