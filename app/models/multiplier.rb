class Multiplier < ApplicationRecord
  validates :name, presence: true

  def retrieve(major)
    if major == "Computer Science"
      self.name = "Games Released on Steam"
      self.multiplier_value = 21
    end
  end
  
end
