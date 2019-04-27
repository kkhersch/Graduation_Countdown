class Multiplier < ApplicationRecord

  after_initialize :default_values

  def default_values
    self.name ||= "No Defined Name"
    self.multiplier_value ||= 0
  end

  validates :name, presence: true
end
