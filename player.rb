class Player 
attr_accessor :name, :icon

def initialize name, icon
@icon = icon
@name = name
end	

def draw

print @icon

end



end	