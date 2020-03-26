require 'pry'

module Players
  class Computer < Player

corners = board.cells[0, 2, 6, 8]
middles = board.cells[1, 3, 5, 7]
def move(board)
  
  binding.pry 
  if board.cells[4] == " "
   "5"
  elsif corners.find {|cell| cell == " "}
    
  elsif middles.find {|cell| cell == " "}
   
  elsif board.cells.find {|cell| cell == " "}
  

end

end

  
end

end
