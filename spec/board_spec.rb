require './game'

describe 'check_win' do
	before(:each) do
		@game = Game.new
	end
	it 'returns true if three of a kind in any line' do
		win_with_x_line
		expect(@game.board.check_win).to eq(true)
	end
	it 'returns true if three of a kind in any column' do
		win_with_o_column
		expect(@game.board.check_win).to eq(true)
	end
	it 'returns true if three of a kind in a diagonal' do
		win_with_x_diagonal_lr
		expect(@game.board.check_win).to eq(true)
	end
	it 'returns false if no valid winning pattern' do
		@game.play(0, 0)
		@game.play(0, 1)
		expect(@game.board.check_win).to eq(false)
	end
	it 'returns false if no valid winning pattern with 3 rounds' do
		@game.play(0, 0)
		@game.play(0, 2)
		@game.play(0, 1)
		@game.play(1, 1)
		@game.play(2, 2)
		@game.play(1, 0)
		expect(@game.board.check_win).to eq(false)
	end
end