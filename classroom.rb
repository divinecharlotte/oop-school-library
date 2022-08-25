# creating Classroom class
class Classroom
  attr_accessor :label, :students

  def initialize(_label)
    @laber = laber
    @students = []
  end

  def add_student(student)
    students.push(student)
    student.classroom = self
  end
end
