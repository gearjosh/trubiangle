require 'sinatra'
require 'sinatra/reloader'
require './lib/triangle'
require 'pry'

get('/') do
  erb(:side_form)
end

post('/result') do
  side1 = params[:side1].to_i
  side2 = params[:side2].to_i
  side3 = params[:side3].to_i
  triangle = Triangle.new(side1, side2, side3)
  @result = triangle.what_kind_of_triangle
  erb(:result)
end
