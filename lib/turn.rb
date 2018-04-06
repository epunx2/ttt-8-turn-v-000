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

def input_to_index(index)
  if index == "" || index == " " || index == nil
    return -1
  else
    index.to_i
    index -= 1
  end
end

def move(board, index, character = x)
  input_to_index(index)
  valid_move(board, index)
  board[index] = character
  return board
end
