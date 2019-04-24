require "rails_helper"

RSpec.describe CreatesMultiplier do
  it "creates a multiplier given a name" do
    creator = CreatesMultiplier.new(name: "Games Released on Steam")
    creator.build
    expect(creator.project.name).to eq("Games Released on Steam")
  end

  it "creates a multiplier given a multiplier value" do
    creator = CreatesMultiplier.new(multiplier_value: 0.0192)
    creator.build
    expect(creator.project.multiplier_value).to eq(0.0192)
  end

  it "creates a multiplier given a name and a multiplier vale" do
    creator = CreatesMultiplier.new(name: "Games Released on Steam", multiplier_value: 0.192)
    creator.build
    expect(creator.project.multiplier_value).to eq(0.0192)
    expect(creator.project.name).to eq("Games Released on Steam")
  end

  describe "failure cases" do
    it "fails when trying to save a project with no name" do
      creator = CreatesMultiplier.new(name: "", multiplier_value: 12)
      creator.create
      expect(creator).not_to be_a_success
    end
  end
end
