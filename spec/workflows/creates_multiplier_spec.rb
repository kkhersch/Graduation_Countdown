require "rails_helper"

RSpec.describe CreatesMultiplier do
  it "creates a multiplier given a name" do
    creator = CreatesMultiplier.new(multiplier_name: "Games Released on Steam")
    creator.build
    expect(creator.multiplier.multiplier_name).to eq("Games Released on Steam")
  end

  it "creates a multiplier given a multiplier value" do
    creator = CreatesMultiplier.new(multiplier_value: 2)
    creator.build
    expect(creator.multiplier.multiplier_value).to eq(2)
  end

  it "creates a multiplier given a name and a multiplier vale" do
    creator = CreatesMultiplier.new(multiplier_name: "Games Released on Steam", multiplier_value: 4)
    creator.build
    expect(creator.multiplier.multiplier_value).to eq(4)
    expect(creator.multiplier.multiplier_name).to eq("Games Released on Steam")
  end

  describe "failure cases" do
    it "fails when trying to save a multiplier with no name" do
      creator = CreatesMultiplier.new(multiplier_name: "", multiplier_value: 12)
      creator.create
      expect(creator).not_to be_a_success
    end
  end
end
