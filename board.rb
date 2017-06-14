class Board
	attr_reader :board

	def initialize
		@board = [['-','-','-'], ['-','-','-'], ['-','-','-']]
		@marker = 'x'
	end

	def check_win
		check_rows || check_columns || check_diagonals
	end

	def place_marker(x, y)
		@board[y][x] = @marker
	end

	def check_empty_tile(x, y)
		@board[y][x] != '-'
	end

	def switch_marker(turn)
		turn == 0 ? @marker = 'x' : @marker = 'o'
	end

	private

	def check_rows
		@board.include?([@marker,@marker,@marker])
	end

	def check_columns
		@board.map {|row| row[0] == @marker }.count(true) == 3 || 
		@board.map {|row| row[1] == @marker }.count(true) == 3 || 
		@board.map {|row| row[2] == @marker }.count(true) == 3
	end

	def check_diagonals
		@board[0][0] == @marker && 
		@board[1][1] == @marker && 
		@board[2][2] == @marker || 
		@board[2][0] == @marker && 
		@board[1][1] == @marker && 
		@board[0][2] == @marker
	end

end