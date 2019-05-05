class Multiplier < ApplicationRecord

  after_initialize :default_values

  def default_values
    self.name ||= "No Defined Name"
    self.multiplier_value ||= 0
  end

  def retrieve(major)
    if major = "Computer Science"
      multiplier = Multiplier.create(name: "Games Released on Steam", multiplier_value: 21)
    end
    multiplier
  end

  validates :name, presence: true
end
