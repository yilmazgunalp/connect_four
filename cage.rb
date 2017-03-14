class Cage 

class PlaceHolder

def to_s 
"\u{2610}"
end	
end	

@@cage = Array.new(6) { Array.new(7) { PlaceHolder.new  } }

def self.cage
@@cage
end	

def self.draw
@@cage.each_with_index do |row,i|
puts "#{i+1}  #{row.join(" ")}"
end	
puts "   #{("A".."G").to_a.join(" ")}"
end	

def self.place player, cell

@@cage[cell[0]][cell[1]] = player.icon if @@cage[cell[0]][cell[1]].class == PlaceHolder

end	

def self.game_over? cell

 
	 	 
	if cell[0]+3 < 6
		result = []
		for i in cell[0]..cell[0]+3
		result << @@cage[i][cell[1]]
		i += 1 
		end	
		return true if result.uniq.length == 1  
		end



x = @@cage[cell[0]][cell[1]] 	
a = @@cage[cell[0]][cell[1]-3] 
b = @@cage[cell[0]][cell[1]-2] 
c = @@cage[cell[0]][cell[1]-1]
d = @@cage[cell[0]][cell[1]+1] 
e = @@cage[cell[0]][cell[1]+2] 
f = @@cage[cell[0]][cell[1]+3] 

if a == b && b == c && c == x
return true
end

if d == e && e == f && f == x
return true	
end 

if b == c && c == x && x == d
return true
end

if c == x && x == d && d == e
return true	
end


	
begin 

aa = @@cage[cell[0]-3][cell[1]+3] 
ab = @@cage[cell[0]-2][cell[1]+2] 
ac = @@cage[cell[0]-1][cell[1]+1]

ad = @@cage[cell[0]+3][cell[1]-3]  
ae = @@cage[cell[0]+2][cell[1]-2]  
af = @@cage[cell[0]+1][cell[1]-1]  

ba = @@cage[cell[0]+3][cell[1]+3]  		
bb = @@cage[cell[0]+2][cell[1]+2]  
bc = @@cage[cell[0]+1][cell[1]+1]  

rescue Exception 
	

end	

if aa == ab && ab == ac && ac == x
return true
end

if ad == ae && ae == af && af == x
return true	
end



if ba == bb && bb == bc && bc == x
return true
end



end

end	

