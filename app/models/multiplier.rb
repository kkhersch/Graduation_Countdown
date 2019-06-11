class Multiplier < ApplicationRecord
  validates :multiplier_name, presence: true

  def retrieve(major)
    if major == "Computer Science"
      self.multiplier_name = "Games Released on Steam"
      self.multiplier_value = 21
    end
  end
  
end
