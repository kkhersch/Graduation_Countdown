require "rails_helper"

RSpec.describe "determine time", type: :model do
  let (:freshman_student) {FactoryBot.create(:student, :freshman)}
  let (:sophmore_student) {FactoryBot.create(:student, :sophmore)}
  let (:junior_student) {FactoryBot.create(:student, :junior)}
  let (:senior_student) {FactoryBot.create(:student, :senior)}
  
  it "Has a class standing" do
    expect(freshman_student.class_standing).to eq("Freshman")
  end

  it "Has a class standing based on credits" do
    expect(sophmore_student.class_standing).to eq("Sophmore")
  end

  it "Can determine time based on class standings" do
    expect(sophmore_student.caluclate_time_until_graduation).to eq(1095)
  end

  it "Has a time value for every class standing" do
    expect(freshman_student.caluclate_time_until_graduation).to eq(1460)
    expect(sophmore_student.caluclate_time_until_graduation).to eq(1095)
    expect(junior_student.caluclate_time_until_graduation).to eq(730)
    expect(senior_student.caluclate_time_until_graduation).to eq(365)
  end
end

RSpec.describe "Calculates final output" do
  let(:fake_multiplier) {FactoryBot.build_stubbed(:multiplier, :steam)}
  let(:fake_multiplier_float) {FactoryBot.build_stubbed(:multiplier, :rupie)}
  let(:fake_multiplier_default) {FactoryBot.build_stubbed(:multiplier, :default)}
  it "Has a major" do
    fake_student = Student.create(declared_major: "Computer Science")
    expect(fake_student.declared_major).to eq("Computer Science")
  end

  it "Has a multiplier value that is not an integer" do
    expect(fake_multiplier_float.multiplier_value).to eq(5.7)
  end

  it "Can select a multiplier based off of major" do
    fake_student = Student.create(declared_major: "Computer Science")
    fake_multiplier_default.retrieve(fake_student.declared_major)
    expect(fake_multiplier_default.name).to eq("Games Released on Steam")
    expect(fake_multiplier_default.multiplier_value).to eq(21)
  end

  it "Can calculate time till graduation * multiplier" do
    fake_student = Student.create(declared_major: "Computer Science", credits: 72)
    fake_multiplier_default.retrieve(fake_student.declared_major)
    time_value = fake_student.caluclate_time_until_graduation
    result = fake_multiplier_default.multiplier_value * time_value
    expect(result).to eq(22995)
  end
end
