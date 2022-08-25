require_relative 'person'
# Class Teacher inherits from Person
class Teachear < Person
  def initialize(specialization, age)
    super(age, parent_permission: true)
    @specialization = specialization
  end

  def can_use_services?
    true
  end
end
