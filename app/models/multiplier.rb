class Multiplier < ApplicationRecord
  def initialize
    @name = "No Defined Name"
    @multiplier_value = 0
  end

  def set_name(name)
    @name = name
  end

  def name
    @name
  end

  def set_multiplier(multiplier_value)
    @multiplier_value = multiplier_value
  end

  def multiplier
    @multiplier
  end

  validates :name, presence: true
end
