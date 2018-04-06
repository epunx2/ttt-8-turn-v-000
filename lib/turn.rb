def display_board(board)
  print board
end

def valid_move?(board, index)
  if position_taken? || index > 8
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
