require "rails_helper"

RSpec.describe "calculating graduation time of a student", type: :system do
  it "allows a user to calculate a selected student's graduation time" do
    visit calc_grads_path
    select "Matt Damon", :from => "Student Name"
    choose('Jason Bourne Identity')
    click_on("Calculate Graduation Time")
    expect(page).to have_content(4380)
  end
end
