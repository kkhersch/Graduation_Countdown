require 'rails_helper'

describe Multiplier, type: :model do
  # pending "add some examples to (or delete) #{__FILE__}"
  let (:fake_multiplier) {FactoryBot.create(:multiplier, :steam)}
  # it "has a changeable graduation date" do
  #   fake_student.days_until_graduation = 400
  #   expect(fake_student.days_until_graduation).to be == 400
  # end
end
