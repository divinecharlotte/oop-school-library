require_relative 'person'
# Class Teacher inherits from Person
class Teacher < Person
  def initialize(age, _name, specialization)
    super(age, parent_permission: true)
    @specialization = specialization
  end

  def can_use_services?
    true
  end
end
