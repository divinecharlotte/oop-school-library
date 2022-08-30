require_relative 'person'
# Class Teacher inherits from Person
class Teacher < Person
  attr_reader :specialization

  def initialize(age, name, specialization)
    super(age, name, parent_permission: true)
    @specialization = specialization
  end

  def can_use_services?
    true
  end
end
