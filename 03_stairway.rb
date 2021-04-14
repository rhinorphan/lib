def dice_game
  puts "Bienvenue dans le jeux du dés !"
  puts "Veuillez lancer le dé en appuyant sur une touche et entré"
  dice = gets.chomp
end

def result_dice
  steps = 0
  dice_thrown = 0
  until steps == 10
    dice_result = rand(1..6)
    if dice_result == 5 or dice_result == 6
      steps += 1
      puts "Bravo, tu avances d'une marche ! Tu te trouves sur la marche #{steps}."
    elsif dice_result == 1
      steps -=1
      puts "Dommage, tu descends d'une marche.. Tu te trouves sur la marche #{steps}."
    else dice_result == 2 or dice_result == 3 or dice_result == 4
      puts "Tu restes sur place. Tu te trouves sur la marche #{steps}."
    end
    dice_thrown += 1
  end
  if steps == 10
    puts " "
    puts "BRAAAAAVVVOOOOOOO !!!!! Tu as gagné le jeux ! Pour info, tu as finis la partie en #{dice_thrown} tours !"
  end
end

def average_finish_time
  dice_thrown_count = []
  puts "Combien de parties voulez-vous rejouer ?"
  print "> "
  number_of_games = gets.to_i
  number_of_games.times do 
    steps = 0
    dice_thrown = 0
    until steps == 10
      dice_result = rand(1..6)
      if dice_result == 5 or dice_result == 6
        steps += 1
        puts "Bravo, tu avances d'une marche ! Tu te trouves sur la marche #{steps}."
      elsif dice_result == 1
        steps -=1
        puts "Dommage, tu descends d'une marche.. Tu te trouves sur la marche #{steps}."
      else dice_result == 2 or dice_result == 3 or dice_result == 4
        puts "Tu restes sur place. Tu te trouves sur la marche #{steps}."
      end
      dice_thrown += 1
    end
    if steps == 10
      puts " "
      puts "BRAAAAAVVVOOOOOOO !!!!! Tu as gagné le jeux ! Pour info, tu as finis la partie en #{dice_thrown} tours !"
    end
    dice_thrown_count.push(dice_thrown)
  end
  total = dice_thrown_count.sum
  puts " "
  puts "En moyenne sur #{number_of_games} parties jouées, les 10 marches ont été atteinte en #{total / number_of_games} tours."
end

def perform
  dice_game
  result_dice
  average_finish_time
end

perform