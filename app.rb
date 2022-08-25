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
  

