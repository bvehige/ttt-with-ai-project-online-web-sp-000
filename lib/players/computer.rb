require 'pry'

module Players
  class Computer < Player

attr_accessor :board

 attr_accessor :board
  WIN_COMBINATIONS = [
  [0, 1, 2],
  [3, 4, 5],
  [6, 7, 8],
  [0, 3, 6],
  [1, 4, 7],
  [2, 5, 8],
  [0, 4, 8],
  [6, 4, 2]
  ]
  CORNERS = [0, 2, 8, 6]
  MIDDLES = [1, 3, 5, 7]

#CORNERS = board.cells[0, 2, 6, 8]
#MIDDLES = board.cells[1, 3, 5, 7]

def move(board)
  if board.cells[4] == " "
   "5"

  end

end

def computer_move 
  
end

def corner_move 
  
end

def middle_move
  middle.find {|cell| board.cells[cell] == " "}
end

def block 
  
end

def winning_move
  
end

def middle 
 MIDDLES   
end




  
end

end
