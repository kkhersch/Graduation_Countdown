class Multiplier < ApplicationRecord
  validates :name, presence: true
  after_initialize :default_values

  def default_values
    self.name ||= "No Defined Name"
    self.multiplier_value ||= 0
  end

  def retrieve(major)
    if major == "Computer Science"
      self.name = "Games Released on Steam"
      self.multiplier_value = 21
    end
  end

  
end
