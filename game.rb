
class Game
	attr_reader :turn, :board

	def initialize
		@turn = 0
		@turn_marker = 'x'
		@board = [['-','-','-'], ['-','-','-'], ['-','-','-']]
	end

	def play(x, y)
		if  check_empty_tile(x, y)
			return 'Tile already taken. Please choose another.' 
		else
			@board[y][x] = @turn_marker
		end
		if check_win 
			"Player #{@turn + 1} wins!" 
		else
			turn_switch
		end
	end

	def check_empty_tile(x, y)
		@board[y][x] != '-'
	end

	def turn_switch
		@turn == 0 ? @turn = 1 : @turn = 0 
		turn_marker
		return
	end

	def turn_marker
		@turn == 0 ? @turn_marker = 'x' : @turn_marker = 'o'
	end

	def check_win
		check_rows || check_columns || check_diagonals
	end

	def check_rows
		@board.include?([@turn_marker,@turn_marker,@turn_marker])
	end

	def check_columns
		@board.map {|row| row[0] == @turn_marker }.count(true) == 3 || 
		@board.map {|row| row[1] == @turn_marker }.count(true) == 3 || 
		@board.map {|row| row[2] == @turn_marker }.count(true) == 3
	end

	def check_diagonals
		@board[0][0] == @turn_marker && 
		@board[1][1] == @turn_marker && 
		@board[2][2] == @turn_marker || 
		@board[2][0] == @turn_marker && 
		@board[1][1] == @turn_marker && 
		@board[0][2] == @turn_marker
	end
end