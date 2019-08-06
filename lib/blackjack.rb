require 'pry'

def welcome
  puts "Welcome to the Blackjack Table"
end

def deal_card
  1 + rand(10)
end

def display_card_total(total)
  puts "Your cards add up to #{total}"
end

def prompt_user
  puts "Type 'h' to hit or 's' to stay"
end

def get_user_input
  gets.chomp
end

def end_game(total)
  puts "Sorry, you hit #{total}. Thanks for playing!"
end

def initial_round
  sum = deal_card + deal_card
  display_card_total(sum)
  sum
end

def hit?(card_total)
  prompt_user
  letter = get_user_input
  # binding.pry
   if letter == 'h'
    card_total = card_total + deal_card
    puts "Your total is #{card_total}"
   elsif letter == 's'
   else
     invalid_command
     hit?(card_total)
   end
  card_total
end

def invalid_command
  puts "Please enter a valid command"
end

#####################################################
# get every test to pass before coding runner below #
#####################################################

def runner
  welcome
  total = initial_round
  display_card_total(total)
  if total < 21
    hits?(total)
    display_card_total(total)
  else
  end_game
  end
end
    
