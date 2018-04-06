def display_board(board)
  puts line_one = " #{board[0]} | #{board[1]} | #{board[2]} "
  puts line_two = "-----------"
  puts line_three = " #{board[3]} | #{board[4]} | #{board[5]} "
  puts line_four = "-----------"
  puts line_five = " #{board[6]} | #{board[7]} | #{board[8]} "
end

def valid_move?(board, index)
  if position_taken?(board, index) || index > 8 || index < 0
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
    input = -1
    index = input
    return index
  else
    index = input.to_i
    index -= 1
  end
end

def move(board, input, character = x)
  input_to_index(input)
  if valid_move?(board, index)
    board[index] = character
    display_board(board)
  else
    puts "Invalid move"
  end
end

def turn(board)
  puts "Please enter 1-9"
  input = gets.split
  if 10 > input > 0
    move(board, input)
  else
    puts "Invalid entry"
    turn(board)
  end
end
