# frozen_string_literal: true

require_relative 'name_able'

# class called person
class Person < Nameable
  attr_reader :id, :rentals
  attr_accessor :name, :age

  # initializing the class person
  def initialize(age, name = 'Unknown', parent_permission: true)
    super()
    @id = rand(1..1000)
    @name = name
    @age = age
    @parent_permission = parent_permission
    @rentals = []
  end

  def add_rental(date, book)
    Rental.new(date, self, book)
  end

  def correct_name
    @name
  end

  # Private method is_of_age?
  def of_age?
    @age >= 18
  end
  private :of_age?

  # Public method can_use_services?
  def can_use_services?
    of_age? || @parent_permission
  end
  public :can_use_services?
end
