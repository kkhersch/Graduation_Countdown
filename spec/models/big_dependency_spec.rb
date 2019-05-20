require "rails_helper"
require "big_dependency"

RSpec.describe "large dependencies" do
  let (:fake_multiplier) {FactoryBot.build_stubbed(:multiplier, :steam)}
  let (:fake_student) {FactoryBot.build_stubbed(:student, :freshman)}

  describe "multiplier with large dependency" do
    it "can run the large method using a fake" do
      result = fake_multiplier.long_method(FakeBigDependency.new)
      expect(result).to eq(7)
    end

    it "can run the large method with a mock / stub" do
      allow(fake_multiplier).to receive(:long_method).with(7).and_return(7)
      result = fake_multiplier.long_method(7)
      expect(result).to eq(7)
    end
  end
  
  describe "student with large dependency" do
    it "can run the large method using a fake" do
      result = fake_student.long_method(FakeBigDependency.new)
      expect(result).to eq(7)
    end

    it "can run the large method with a mock / stub" do
      allow(fake_student).to receive(:long_method).with(7).and_return(7)
      result = fake_student.long_method(7)
      expect(result).to eq(7)
    end
  end
end
