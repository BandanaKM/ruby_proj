# Number guessing game
#
# Computer asks what range of numbers to play in? No - We will demand 1 - 100 inclusive.
#
# Computer asks how many guesses before you lose the game? No, we know that a
#   perfect game is 7, do we allow for 10 guesses before the computer makes fun
#   of you for being a flawed human type object?
# [x] Computer picks a number.
# Player guesses.
# Computer responds with hint.
# Computer reports win/continue/lose status

def secret_number
  rand(1..100)
end

def greeting
  <<-eos
I'm thinking of a random number from 1 to 100.
Can you guess it?
  eos
end

def prompt(message)
  print message + ' '
  gets.chomp
end

if __FILE__ == $PROGRAM_NAME
  answer_hash = {-1 => 'Too low', 0 => 'You Win!', 1 => 'Too high'}
  report_of_some_kind = "It took you %s guesses.\nThese were your guesses: %s"

  guesses = []
  number = secret_number
  num_guesses = 0
  puts greeting
  loop do
    guesses << prompt('What is your guess?').to_i
    num_guesses += 1
    puts answer_hash[guesses.last <=> number]
    break if guesses.last == number
  end
  puts report_of_some_kind % [num_guesses, guesses.join(', ')]
end

