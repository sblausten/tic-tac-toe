
module Helpers

	def help
		:available
	end

	def win_with_x_line
		@game.play(0, 0)
		@game.play(0, 1)
		@game.play(1, 0)
		@game.play(1, 1)
		@game.play(2, 0)
	end

	def win_with_o_line
		@game.play(0, 0)
		@game.play(0, 1)
		@game.play(1, 0)
		@game.play(1, 1)
		@game.play(3, 3)
		@game.play(2, 3)
	end

	def win_with_x_column
		@game.play(0, 0)
		@game.play(1, 1)
		@game.play(0, 1)
		@game.play(1, 0)
		@game.play(0, 2)
	end

	def win_with_o_column
		@game.play(0, 0)
		@game.play(1, 1)
		@game.play(0, 1)
		@game.play(1, 2)
		@game.play(2, 2)
		@game.play(1, 0)
	end

	def win_with_x_diagonal_lr
		@game.play(0, 0)
		@game.play(1, 2)
		@game.play(1, 1)
		@game.play(1, 0)
		@game.play(2, 2)
	end

	def win_with_o_diagonal_lr
		@game.play(1, 0)
		@game.play(0, 2)
		@game.play(0, 1)
		@game.play(1, 1)
		@game.play(2, 2)
		@game.play(2, 0)
	end

	def win_with_x_diagonal_rl
		
	end

	def win_with_o_diagonal_rl
		
	end

end
