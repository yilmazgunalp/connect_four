require_relative '../cage.rb'

describe Cage do 
let(:player1) {Player.new("YG","\u{264A}")}
let(:player2) {Player.new("RG","\u{264D}")}

it "draws cage" do 
expect{Cage.draw}.to output(be_an_instance_of(String)).to_stdout
end

it "returns an array of arrays(6x7)"  do 
expect(Cage.cage.flatten.size).to eql 42 
end

describe ".place" do 

it "changes cell to players icon" do 
cell = [1,3]

expect{Cage.place(player1,cell)}.to change {Cage.cage[cell[0]][cell[1]]}.to eql(player1.icon)
end
end

describe ".game_over?" do 


context " vertical tests" do 

before do 
Cage.place player2, [1,6]
Cage.place player2, [2,6]
Cage.place player2, [3,6]
Cage.place player2, [4,6]
Cage.place player1, [4,3]
Cage.place player1, [3,3]
Cage.place player1, [2,3]
Cage.place player1, [1,3]

Cage.draw
end	

it "returns true for vertical 4"  do 
expect(Cage.game_over?([1,6])).to eql true
expect(Cage.game_over?([1,3])).to eql true

end
end



context "horizontal tests" do 

before do 
Cage.place player2, [1,4]
Cage.place player2, [1,3]
Cage.place player2, [1,2]
Cage.place player2, [1,1]
Cage.place player1, [0,0]
Cage.place player1, [0,1]
Cage.place player1, [0,2]
Cage.place player1, [0,3]
Cage.place player2, [5,6]
Cage.place player2, [5,5]
Cage.place player2, [5,4]
Cage.place player2, [5,3]


Cage.draw
end	



it "returns true for horizontal 4" do 

expect(Cage.game_over?([1,2])).to eql true
expect(Cage.game_over?([0,1])).to eql true
expect(Cage.game_over?([0,2])).to eql true
expect(Cage.game_over?([0,3])).to eql true
expect(Cage.game_over?([0,0])).to eql true
expect(Cage.game_over?([5,6])).to eql true

end

end

context "diagonal test"  do 

before do 
Cage.place player2, [5,3]
Cage.place player2, [2,3]
Cage.place player2, [3,2]
Cage.place player2, [4,1]
Cage.place player2, [5,0]
Cage.place player1, [0,0]
Cage.place player1, [1,1]
Cage.place player1, [2,2]
Cage.place player1, [3,3]
Cage.place player2, [1,2]
Cage.place player2, [3,4]
Cage.place player2, [4,5]
Cage.draw
end	

it "returns true for diagonal 4" do 

expect(Cage.game_over?([2,3])).to eql true
expect(Cage.game_over?([0,0	])).to eql true
expect(Cage.game_over?([1,2])).to eql true

end

end


end
end