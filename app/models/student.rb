class Student
  def initialize
    @days_until_graduation = 0
    @declared_major = "No defined major"
    @credits = 0;
  end
  def set_days_until_graduation(days)
    @days_until_graduation = days
  end
  def days_until_graduation
    @days_until_graduation
  end
  def declared_major
    @declared_major
  end
  def set_major(major)
    @declared_major = major
  end
  def class_standing
    if(@credits < 50)
      "Freshman"
    elsif (@credits < 90)
      "Sophmore"
    elsif (@credits < 135)
      "Junior"
    else 
      "Senior"
    end
  end
  def set_credits(credits)
    if(credits < 0)
      raise ArgumentError,"Positive credits value expected"
    else
      @credits = credits
    end
  end
end