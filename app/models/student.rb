class Student < ApplicationRecord

  def class_standing
    if(credits < 50)
      "Freshman"
    elsif (credits < 90)
      "Sophomore"
    elsif (credits < 135)
      "Junior"
    else
      "Senior"
    end
  end

  def caluclate_time_until_graduation
    if (self.class_standing == "Freshman")
      self.days_until_graduation = 1460
    elsif (self.class_standing == "Sophomore")
      self.days_until_graduation = 1095
    elsif (self.class_standing == "Junior")
      self.days_until_graduation = 730
    else
      self.days_until_graduation = 365
    end
  end
  
end
