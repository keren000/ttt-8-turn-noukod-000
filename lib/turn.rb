def display_board
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

def input_to_index(user_input)
  user_input.to_i - 1
end
 def move(index, current_player = "X")
  board[index] = current_player
end
 def position_taken?(index)
  !(board[index].nil? || board[index] == " ")
end
 def valid_move?(index)
  index.between?(0,8) && !position_taken?(index)
end

def turn(board)
  puts "Please enter 1 - 9:"
end


