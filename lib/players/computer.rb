require 'pry'

module Players
  class Computer < Player

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
  if center?
    input = 5 
  elsif winning_move != nil
    input = winning_move + 1 
  elsif block != nil
    input = block + 1 
  elsif corner_move != nil 
    input = corner_move + 1 
  elsif middle_move != nil 
    input = middle_move + 1 
  else
        until !board.taken?(input)
          input = (1..9).to_a.sample
        end
    end
    input.to_s

end

def computer_move 
  winning_move || block || corner_move || middle_move 
end

def corner_move 
  corner.find {|cell| board.cells[cell] == " "}
end

def middle_move
  middle.find {|cell| board.cells[cell] == " "}
end

def block 
  winning_row = WIN_COMBINATIONS.find do |tokens|
      (board.cells[tokens[0]] == enemy && board.cells[tokens[1]] == enemy && board.cells[tokens[2]] == " ") || (board.cells[tokens[1]] == enemy && board.cells[combo[2]] == enemy && board.cells[combo[0]] == " ") || (board.cells[combo[2]] == enemy && board.cells[tokens[0]] == enemy && board.cells[tokens[1]] == " ")
    end
    if winning_row != nil
      winning_cell = winning_row.find {|cell| board.cells[cell] == " "}
  end
end

def winning_move
  winning_row = WIN_COMBINATIONS.find do |tokens|
      (board.cells[tokens[0]] == token && board.cells[tokens[1]] == token && board.cells[tokens[2]] == " ") || (board.cells[tokens[2]] == token && board.cells[tokens[1]] == token && board.cells[tokens[0]] == " ") || (board.cells[tokens[0]] == token && board.cells[tokens[2]] == token && board.cells[tokens[1]] == " ")
    end
    if winning_row != nil
      winning_cell = winning_row.find {|cell| board.cells[cell] == " "}
    end
end

def center?
    board.cells[4] == " "
  end

def middle 
 MIDDLES   
end

def corner 
  CORNERS 
end

def enemy
  token = "X"? "O" : "X"
end




  
end

end
