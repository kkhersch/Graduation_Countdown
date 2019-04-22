require 'rails_helper'

describe "Student" do
  it "has a changeable graduation date" do
    fake_student = Student.new
    expect(fake_student.days_until_graduation).to be_a (Integer)
    expect(fake_student.days_until_graduation).to be >= 0
    fake_student.set_days_until_graduation(400)
    expect(fake_student.days_until_graduation).to be == 400
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
  it "has a class standing based on credits" do
    fake_student = Student.new
    expect(fake_student.class_standing).to be == "Freshman"
    fake_student.set_credits(150)
    expect(fake_student.class_standing).to be == "Senior"
  end
  it "does not allow negative credit values" do
    fake_student = Student.new
    expect{fake_student.set_credits(-10)}.to raise_error("Positive credits value expected")
  end
end