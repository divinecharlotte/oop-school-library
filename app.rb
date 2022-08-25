require_relative 'book'
require_relative 'teacher'
require_relative 'student'

def list_all_books(books)
    if books.empty?
      puts 'There is no book!'
    else
      books.each { |book| puts "Title: '#{book.title}', Author: #{book.author}" }
    end
  end
  

  def list_all_people(people)
    if people.empty?
puts 'there is no person'
    else 
       people.each{|person| puts "[#{person.class}] Name: #{person.name}, ID: #{person.id}, Age: #{person.age}" }
end 

def create_person(person)
    puts 'do you want to create a student(1) or a teacher (2):'
    print 'age:'
    age = gets.chomp.to_i
    print 'name:'
    name = gets.chomp.to_i
    
    
    case selected_person
    when 1
      print 'Has parent permission? [Y/N]: '
      provided_permission = gets.chomp.capitalize
      student_permission = true if provided_permission == 'Y'
      student_permission = false if provided_permission == 'N'
      person.push(Student.new(nil, age, name, parent_permission: student_permission))
    when 2
      print 'Specialization: '
      specialization = gets.chomp
      person.push(Teacher.new(specialization, age, name))
    end
    puts 'Person created successfully.'
    end
    
    def create_book(books)
        print 'title:'
        title = gets.chomp
        print 'author:'
        author = gets.chomp
        bookhs.push(Book.new(title, author))
        puts 'the book is created successfully'
    end
