
class Game
	attr_reader :turn, :board

	def initialize
		@turn = 0
		@turn_marker = 'x'
		@board = [['-','-','-'], ['-','-','-'], ['-','-','-']]
	end

	def play(x, y)
		if @board[y][x] != '-' 
			return 'Tile already taken. Please choose another.' 
		else
			@board[y][x] = @turn_marker
		end
		check_win ? "Player #{@turn + 1} wins!" : turn_switch
	end

	def turn_switch
		@turn == 0 ? @turn = 1 : @turn = 0 
		return
	end

	def turn_marker
		@turn == 0 ? @turn_marker = 'x' : @turn_marker = 'o'
	end

	def check_win
		check_lines || 
		check_rows
	end

	def check_lines
		@board.include?([@turn_marker,@turn_marker,@turn_marker])
	end
	
	def check_rows
		@board.map {|row| row[0] == @turn_marker }.count(true) == 3 ||
		@board.map {|row| row[1] == @turn_marker }.count(true) == 3 || 
		@board.map {|row| row[2] == @turn_marker }.count(true) == 3
	end
end