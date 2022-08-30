require_relative 'factory'

def main
  factory = Factory.new
  loop do
    factory.display_list
    option = gets.chomp.to_i
    case option
    when 1..6
      factory.dispatch(option)
    else
      break
    end
  end
  factory.on_exit
end
main
