def signup
  puts "Bonjour, veuillez choisir un mot de passe :"
  print "> "
  user_password = gets.chomp
  return user_password
end

def login(user_password)
  puts "Pour vous connecter au portail du FBI, veuillez renseigner votre mots de passe :"
  print "> "
  user_input = gets.chomp
  while user_password != user_input
    puts "Mauvais mot de passe, veuillez réessayer :"
    user_input = gets.chomp
  end
  return true
end

def welcome_screen 
  puts "Bonjour agent, bienvenue dans ton dashboard secret !"
	puts "####################################################"
	puts "#                                                  #"
	puts "# Tu peux trouver ici tes missions confidentielles #"
	puts "#                                                  #"
	puts "####################################################"
end 

def perform
  if login(signup)
    welcome_screen
  end
end 

perform