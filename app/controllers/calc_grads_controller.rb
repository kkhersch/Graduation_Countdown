class CalcGradsController < ApplicationController
  def index
    @multipliers = Multiplier.all
    @students = Student.all
    @student_options = Student.all.map { |student| student.student_name}
  end
end
