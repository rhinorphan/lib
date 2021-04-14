def half_pyramid 
  puts "Salut, bienvenue dans ma super pyramide ! Combien d'étages veux-tu ?"
  print "> "
  floors_input = gets.to_i
  for i in 1..floors_input 
    blank = " "
    symbol = "#"
    print blank * (floors_input - i)
    puts symbol * i
  end
end

def full_pyramid
  puts "Salut, bienvenue dans ma super pyramide ! Combien d'étages veux-tu ?"
  print "> "
  floors_input = gets.to_i
  for i in 0..floors_input 
    blank = " "
    symbol = "#"
    print blank * (floors_input - i)
    puts symbol * (2 * i + 1)
  end
end

def wtf_pyramid
  puts "Salut, bienvenue dans ma super pyramide ! Combien d'étages veux-tu ?"
  print "> "
  floors_input = gets.to_i
  if floors_input%2 == 0
    puts "Vous ne pouvez pas choisir un nombre pair ;)"
  else
    for i in 0..(floors_input / 2)
      blank = " "
      symbol = "#"
      print blank * (floors_input - i)
      puts symbol * (2 * i + 1)
    end
    ((floors_input - 1) / 2).downto(1) do |i|
      blank = " "
      symbol = "#"
      print blank * (floors_input - i + 1)
      puts symbol * ((2 * i) - 1)
    end
  end
end

def perform
  wtf_pyramid
end

perform