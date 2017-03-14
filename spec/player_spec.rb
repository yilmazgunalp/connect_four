require_relative '../player.rb'

describe Player  do 

let (:player) do 
Player.new "Yil", "\u{264A}"
end

it  "responds to '#name'" do 
expect(player).to respond_to(:name)
end

describe "#draw" do 
	before do 
	
	end	

it "prints icon" do 
expect{player.draw}.to output(player.icon).to_stdout
end
end

end