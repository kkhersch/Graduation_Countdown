class CalcGradsController < ApplicationController
  def index
    @multipliers = Multiplier.all
    @students = Student.all
  end
end
