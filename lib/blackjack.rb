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

def hit?(input)
  prompt_user
  get_user_input
  if get_user_input == 's'
    total = input
    puts "Your card total is #{input}."
  elsif get_user_input == 'h'
    deal_card
    puts "Your new card is #{deal_card}"
    total = input + deal_card
    puts "Your total is #{total}"
  else
    invalid_command
    hit?(input)
  end
  total
end

def invalid_command
  puts "Please enter a valid command"
end

#####################################################
# get every test to pass before coding runner below #
#####################################################

def runner
  # code runner here
end
    
