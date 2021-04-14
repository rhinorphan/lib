def signup
  puts "Bonjour, veuillez choisir un mot de passe :"
  print "> "
  user_password = gets.chomp
  return user_password
end

def login (password)
  puts "Pour vous connecter au portail du FBI, veuillez renseigner votre mots de passe :"
  print "> "
  str = gets.chomp
  while password != str
    puts "Mauvais mot de passe, veuillez réessayer :"
    str = gets.chomp
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