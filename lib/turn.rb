def input_to_index(move)
   index = move.to_i - 1
   index
end

 def position_taken?(board, index)
  !(board[index].nil? || board[index] == " ")
end

 def valid_move?(board, index)
   if index.between?(0, 8) && !position_taken?(board, index)
      puts "This is a valid move"
    return true
  else
   return false
  end
end

def move(board, index, token = "X")
  board[index] = token
  return(board)
 end

 def turn(board)
  puts "Please enter 1-9:"
  user_input = gets.strip

  #input to index
  index = input_to_index(user_input)
  token = current_player(board)

   #check for validation
  if valid_move?(board,index)
    puts "Valid move"
    move(board, index, token)
    display_board(board)
   else
    puts "Try again"
    turn(board)
  end
  display_board(board)
end
def current_player
  num_turns = turn_count
 if num_turns % 2 == 0
   player = "X"
 else
   player = "O"
 end
 return player
end

def turn_count
  turn = 0
  board.each do |index|
    if index == "X" || index == "O"
      turn += 1
    end
  end
  return turn
end
