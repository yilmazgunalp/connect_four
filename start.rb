require './cage.rb'
require './player.rb'


def start_game
player1 = Player.new("YG","\u{264A}")
player2 = Player.new("RG","\u{264D}")


Cage.draw
player = player1
while true 
puts "#{player.name} please enter a cell to drop your icon as A1, B5, D3 etc"
choice = gets.chomp.downcase
cell = [(choice[1].to_i-1),["a","b","c","d","e","f","g"].index(choice[0])]
Cage.place player, cell
Cage.draw
if Cage.game_over?(cell)
puts "Wow #{player.icon} Won!!"	
return false
end	
puts
player = player == player1 ? player2 : player1
end

end	

start_game()