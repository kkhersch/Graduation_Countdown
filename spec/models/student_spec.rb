require 'rails_helper'

describe "Student" do

  let (:fake_student) {FactoryBot.create(:student)}
  it "has a changeable graduation date" do
    # fake_student = Student.create(days_until_graduation: 20)
    fake_student.days_until_graduation = 400
    expect(fake_student.days_until_graduation).to be == 400
  end

  it "has a declared major" do
    fake_student = Student.create(declared_major: "Computer Science")
    expect(fake_student.declared_major).to be == "Computer Science"
  end

  it "handles a lack of a major gracefully" do
      # fake_student = Student.create()
      expect(fake_student.declared_major).to be == "No defined major"
  end

  it "has a class standing based on credits" do
      # fake_student = Student.create()
      expect(fake_student.class_standing).to be == "Freshman"
      fake_student.credits = 150
      expect(fake_student.class_standing).to be == "Senior"
  end

  describe "Sophomore student with major" do
    let(:fake_student) {FactoryBot.create(:student, :sophomore)}
    it "has a declared major" do
      # fake_student = Student.create(declared_major: "Computer Science")
      expect(fake_student.declared_major).to be == "Computer Science"
    end
  end

end