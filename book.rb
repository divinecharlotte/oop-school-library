# creating Book class
class Book
  attr_accessor :id, :title, :author, :rentals

  def initialize(title, author)
    @id = Random.rand(1..100)
    @title = title
    @author = author
    @rentals = []
  end

  def add_rental(date, person)
    Rental.new(date, self, person)
  end
end
