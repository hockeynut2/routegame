require 'bundler'
Bundler.require

def test(player1, player2)
  if player1 == player2
    "Player: #{player1}, computer: #{player2}. Tie!"
  elsif player1 == 'rock' and (player2 == 'scissors' or player2 == 'lizard')
    "Player: #{player1}, computer: #{player2}. Player wins!"
  elsif player1 == 'paper' and (player2 == 'rock' or player2 == 'Spock')
    "Player: #{player1}, computer: #{player2}. Player wins!"
  elsif player1 == 'scissors' and (player2 == 'paper' or player2 == 'lizard')
    "Player: #{player1}, computer: #{player2}. Player wins!"
  elsif player1 == 'lizard' and (player2 == 'paper' or player2 == 'Spock')
    "Player: #{player1}, computer: #{player2}. Player wins!"
  elsif player1 == 'Spock' and (player2 == 'rock' or player2 == 'scissors')
    "Player: #{player1}, computer: #{player2}. Player wins!"
  else
    "Player: #{player1}, computer: #{player2}. Computer wins!"
  end
end

get '/throw/' do
  player = ['rock', 'paper', 'scissors', 'lizard', 'Spock'].sample
  computer = ['rock', 'paper', 'scissors', 'lizard', 'Spock'].sample

  test(player, computer)
end


get '/throw/:object' do
  player = params[:object]
  computer = ['rock', 'paper', 'scissors', 'lizard', 'Spock'].sample

  test(player, computer)
end