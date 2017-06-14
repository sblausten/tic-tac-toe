

describe 'game' do

	it "has access to the helper methods defined in the module" do
	    help.should be(:available)
	end
	describe 'new' do
		it 'is initialized with @turn at 0' do
			game = Game.new
			expect(game.turn).to eq(0)
		end
	end
	describe 'turn_switch' do
		it 'changes @turn to 1 after play has been called once' do
			game = Game.new
			game.play(0, 0)
			expect(game.turn).to eq(1)
		end
		it 'changes @turn back to 0 after play has been called twice' do
			game = Game.new
			game.play(0, 0)
			game.play(0, 1)
			expect(game.turn).to eq(0)
		end
		it 'does not switch turn when player chooses tile that has already been taken' do
			game = Game.new
			game.play(0, 1)
			game.play(0, 1)
			expect(game.turn).to eq(1)
		end	
	end
	describe 'turn_marker' do
		it 'switches to "o" after first turn' do
			game = Game.new
			game.play(0, 0)
			expect(game.turn_marker).to eq('o')
		end
		it 'switches back to "x" after second turn' do
			game = Game.new
			game.play(0, 0)
			game.play(1, 0)
			expect(game.turn_marker).to eq('x')
		end
	end
	describe 'check_win' do
		before(:each) do
			@game = Game.new
		end
		it 'returns true if three of a kind in any line' do
			win_with_x_line
			expect(@game.check_win).to eq(true)
		end
		it 'returns true if three of a kind in any column' do
			win_with_o_column
			expect(@game.check_win).to eq(true)
		end
		it 'returns true if three of a kind in a diagonal' do
			win_with_x_diagonal_lr
			expect(@game.check_win).to eq(true)
		end
		it 'returns false if no valid winning pattern' do
			@game.play(0, 0)
			@game.play(0, 1)
			expect(@game.check_win).to eq(false)
		end
		it 'returns false if no valid winning pattern with 3 rounds' do
			@game.play(0, 0)
			@game.play(0, 2)
			@game.play(0, 1)
			@game.play(1, 1)
			@game.play(2, 2)
			@game.play(1, 0)
			expect(@game.check_win).to eq(false)
		end
	end
	describe 'play' do
		before(:each) do
			@game = Game.new
		end
		it 'changes the board' do
			@game.play(0, 1)
			expect(@game.board).to eq([['-','-','-'], ['x','-','-'], ['-','-','-']])
		end

		# it 'returns win when there are three x in a row' do
		# 	expect(win_with_x_line).to eq("Player 1 wins!")
		# end	
		# it 'returns win for player 2 when there are three o in a row' do
		# 	expect(win_with_o_line).to eq("Player 2 wins!")
		# end	
		# it 'does not return anything unless three in a row' do
		# 	@game.play(0, 0)
		# 	@game.play(1, 1)
		# 	expect(@game.play(1, 2)).to eq(nil)
		# end
	end
end