class CalcGradController < ApplicationController
  def index
    @multiplier = Multiplier.all
    @student = Student.all
  end
end