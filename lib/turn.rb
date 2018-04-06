def display_board(board)
  puts line_one = " #{board[0]} | #{board[1]} | #{board[2]} "
  puts line_two = "-----------"
  puts line_three = " #{board[3]} | #{board[4]} | #{board[5]} "
  puts line_four = "-----------"
  puts line_five = " #{board[6]} | #{board[7]} | #{board[8]} "
end

def valid_move?(board, index)
  if position_taken? || index > 8 || index > -1
    return false
  else
    return true
  end
end

def position_taken?(board, index)
  if board[index] == "" || board[index] == " " || board[index] == nil
    return false
  else
    return true
  end
end

def input_to_index(input)
  if input == "" || input == " " || input == nil
    return -1
  else
    input.to_i
    input -= 1
    index = input
  end
end

def move(board, input, character = x)
  input_to_index(index)
  valid_move(board, index)
  board[index] = character
end
