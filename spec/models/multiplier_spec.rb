require 'rails_helper'

describe Multiplier, type: :model do
  # pending "add some examples to (or delete) #{__FILE__}"
  let (:fake_multiplier) {FactoryBot.create(:multiplier, :steam)}
  it "has a multiplier name" do
    fake_multiplier.name = "Games Released on Steam"
    expect(fake_multiplier.name).to eq('Games Released on ')
  end
end
