require_relative('spec_helper')

describe Rental do
  before(:each) do
    @person = Person.new(22, 'Josh')
    @book = Book.new('Intimacy', 'Analise')
  end

  it 'Create rental with both person & book' do
    rental = Rental.new('2022/08/31', @book, @person)
    expect(rental.book).to be(@book)
    expect(@book.rentals.first).to be(rental)
    expect(rental.person).to be(@person)
    expect(@person.rentals.first).to be(rental)
  end

  it 'Create through book back_ref' do
    rental = @book.add_rental('2022/08/31', @person)
    expect(rental.book).to be(@book)
    expect(@book.rentals.first).to be(rental)
  end

  it 'Create through person back_ref' do
    rental = @person.add_rental('2022/08/31', @book)
    expect(rental.person).to be(@person)
    expect(@person.rentals.first).to be(rental)
  end
end
