require './board'

class Game
	attr_reader :turn, :board

	def initialize
		@turn = 0
		@board = Board.new
	end

	def play(x, y)
		if @board.check_empty_tile(x, y) 
			return tile_taken
		else 
			@board.place_marker(x,y)
		end
		if @board.check_win 
			"Player #{@turn + 1} wins!"
		else
			turn_switch
		end
	end

	private

	def tile_taken
		'Tile already taken. Please choose another.'
	end

	def turn_switch
		@turn == 0 ? @turn = 1 : @turn = 0 
		@board.switch_marker(@turn)
		return
	end

	
end