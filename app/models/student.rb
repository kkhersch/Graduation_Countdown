class Student
  def initialize
    @declared_major = "No defined major"
  end
  def days_until_graduation
    0
  end
  def declared_major
    @declared_major
  end
  def set_major(major)
    @declared_major = major
  end
end