class Multiplier < ApplicationRecord

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

  def long_method(big_dependency)
    big_dependency.execute
    return 7
  end

  validates :name, presence: true
end
