def say_Hello
  hello = "Bonjour, "
  print hello
end

def ask_name
  puts "Quel est ton prénom ?"
  print "> "
  first_name = gets.chomp
  return first_name
end

def greet(say_Hello, first_name)
  puts "#{say_Hello}#{first_name} !"
end

def perform
  say_Hello
  first_name = ask_name
  greet(say_Hello, first_name)
end 

perform 