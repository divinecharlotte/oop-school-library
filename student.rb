require_relative 'person'
require_relative 'classroom'

# Class Student inherits from Person
class Student < Person
  attr_reader :classroom

  def initialize(classroom, age, name = 'Unknown', parent_permission: true)
    super(age, name, parent_permission: parent_permission)
    self.classroom = classroom
  end

  def play_hooky
    '¯\\(ツ)/¯'
  end

  def classroom=(new_room)
    @classroom = new_room
    new_room.students.push(self) unless new_room.students.include?(self)
  end
end
