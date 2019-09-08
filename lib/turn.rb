def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

def turn(board, index)
print "Please enter 1-9:"
input = gets.strip
input_to_index(input)
end


def input_to_index(input)
  input.to_i - 1
end

def move(board, index, playercharacter = "X")
  board[index] = playercharacter
end

def valid_move?(board, index)
  if index >= 9
    false
  elsif position_taken?(board, index)
    false
  elsif index <= -1
    false
  elsif index.between?(0,8)
    true
  else board[index] != "X" || board[index] != "O"
    true
  end
end

def position_taken? (board, index)
  if board[index] == "" || board[index] == " "
    false
  elsif board[index] == nil
    false
  else board[index] == "X" || board[index] == "O"
    true
  end
end

counter = 0
while counter < 8
  puts "What's your next move?"
  counter +=1
end
