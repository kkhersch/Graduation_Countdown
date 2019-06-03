require 'rails_helper'

describe Multiplier, type: :model do
  # pending "add some examples to (or delete) #{__FILE__}"
  let (:fake_multiplier) {FactoryBot.create(:multiplier, :steam)}
  it "has a multiplier name" do
    expect(fake_multiplier.name).to eq('Games Released on Steam')
  end
  it "has a multiplier value" do
    expect(fake_multiplier.multiplier_value).to eq 21
  end
end
