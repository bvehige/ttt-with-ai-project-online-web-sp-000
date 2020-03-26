require 'pry'

module Players
  class Computer < Player

CORNERS = board.cells[0, 2, 6, 8]
MIDDLES = board.cells[1, 3, 5, 7]

def move(board)
  
  binding.pry 
  if board.cells[4] == " "
   "5"
  elsif corners.find {|cell| board.cells == " "}
    
  elsif middles.find {|cell| board.cells == " "}
   
  elsif board.cells.find {|cell| board.cells == " "}
  

end

end

  
end

end
