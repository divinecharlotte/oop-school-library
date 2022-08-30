require 'json'
module Storage
  def dump_books
    obj1 = @books.map { |book| [book.title, book.author] }
    dump = JSON.dump(obj1)
    file.write('book.json', dump)
  end

  def dump_people
    obj2 = @people.map { |person| [person.class, person.name, person.id, person.age] }
    dump_b = JSON.dump(obj2)
    file.write('person.json', dump_b)
  end
end
