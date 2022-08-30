require 'json'

module Storage
  def dump_all
    dump_books
    dump_people
    dump_rentals
  end

  def load_all
    load_books
    load_people
    load_rentals
  end

  def dump_books
    books = @books.map { |book| [book.id, book.title, book.author] }
    source = JSON.dump(books)
    File.write('books.json', source)
  end

  def dump_people
    people = @people.map do |p|
      [
        p.class, p.id,
        p.age, p.name,
        p.instance_of?(Student) ? p.classroom : p.specialization
      ]
    end
    source = JSON.dump(people)
    File.write('people.json', source)
  end

  def dump_rentals
    rentals = @rentals.map { |ren| [ren.date, ren.book.id, ren.person.id] }
    source = JSON.dump(rentals)
    File.write('rentals.json', source)
  end

  def load_books
    return unless File.exist?('books.json')

    books = JSON.parse(File.read('books.json'))
    books.each do |book|
      obj = Book.new(*book[1..])
      obj.id = book.first
      @books << obj
    end
  end

  def load_people
    return unless File.exist?('people.json')

    people = JSON.parse(File.read('people.json'))
    people.each do |person|
      obj = if person.first == 'Teacher'
              Teacher.new(*person[2..])
            else
              Student.new(person.last, *person[2..3])
            end
      obj.id = person[1]
      @people << obj
    end
  end

  def load_rentals
    return unless File.exist?('rentals.json')

    rentals = JSON.parse(File.read('rentals.json'))
    rentals.each do |obj|
      book = @books.find { |b| b.id == obj[1] }
      person = @people.find { |p| p.id == obj.last }
      rental = Rental.new(obj.first, book, person)
      @rentals << rental
    end
  end
end
