class Student < ApplicationRecord

  after_initialize :default_values

  def default_values
    self.declared_major ||= "No defined major"
    self.credits ||= 0
    self.days_until_graduation ||= 0
  end
  
  def class_standing
    if(credits < 50)
      "Freshman"
    elsif (credits < 90)
      "Sophmore"
    elsif (credits < 135)
      "Junior"
    else 
      "Senior"
    end
  end
end