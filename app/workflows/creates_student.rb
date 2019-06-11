class CreatesStudent
  attr_accessor :credits, :student, :declared_major, :days_until_graduation, :student_name

  def initialize(credits: 0, declared_major: "No defined major", days_until_graduation: 0, student_name: "Anonymus Student")
    @credits = credits
    @declared_major = declared_major
    @days_until_graduation = days_until_graduation
    @student_name = student_name
  end

  def build
    self.student = Student.new(credits: credits, 
                              declared_major: declared_major,
                              days_until_graduation: days_until_graduation,
                              student_name: student_name)
  end
  
  def create
    build
    student.save
  end
  
  
end