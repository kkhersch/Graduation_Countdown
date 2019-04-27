class Multiplier < ApplicationRecord

  after_initialize :default_values

  def default_values
    self.name = "No Defined Name"
    self.multiplier_value = 0
  end

  def set_name(name)
    self.name = name
  end

  def name
    self.name
  end

  def set_multiplier(multiplier_value)
    self.multiplier_value = multiplier_value
  end

  def multiplier
    self.multiplier_value
  end

  validates :name, presence: true
end
