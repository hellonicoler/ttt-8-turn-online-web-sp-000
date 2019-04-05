def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

def input_to_index(index)
  index.to_i - 1
end

def valid_move?(board, index)
  if index.between?(0, 8) && !position_taken?(board, index)
    true
  end
end

def position_taken?(board, index)
  if board[index] == ""
    false
    elsif board[index] == " "
    false
    elsif board[index] == nil
    false
  else board[index] == "X" || "O"
    true
  end
end

def move(board, index, player = "X")
  board[index] = player
end

def turn(board)
  puts "Please enter 1-9:"
input = gets.strip
index = input_to_index(input)
valid_move?(board, index)
if false
  index = input_toindex(input)
end