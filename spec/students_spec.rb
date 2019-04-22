require 'rails_helper'

describe "Student" do
  it "has a graduation date" do
    fake_student = Student.new
    expect(fake_student.days_until_graduation).to be_a (Integer)
    expect(fake_student.days_until_graduation).to be >= 0
  end
  it "has a declared major" do
    fake_student = Student.new
    fake_student.set_major("Computer Science")
    expect(fake_student.declared_major).to be == "Computer Science"
  end
  it "handles a lack of a major gracefully" do
    fake_student = Student.new
    expect(fake_student.declared_major).to be == "No defined major"
  end
end