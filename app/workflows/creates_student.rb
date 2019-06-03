class CreatesStudent
  attr_accessor :credits, :student, :declared_major, :days_until_graduation, :name

  def initialize(credits: 0, declared_major: "No defined major", days_until_graduation: 0, name: "Anonymus Student")
    @credits = credits
    @declared_major = declared_major
    @days_until_graduation = days_until_graduation
    @name = name
  end

  def build
    self.student = Student.new(credits: credits, declared_major: declared_major, days_until_graduation: days_until_graduation, name: name)
  end
  
  def create
    build
    student.save
  end
  
  
end