require "rails_helper"

RSpec.describe "calculating graduation time of a student", type: :system do
  # let( :test_student_name) {test_student_name = 'Matt Damon'}

  pending "allows a user to calculate a selected student's graduation time" do
    visit calc_grads_path

    within('#calc_grad_form') do
      select 'Matt Damon', from: 'student_name'
    end
  end
end
