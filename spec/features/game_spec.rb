
describe 'play game' do
	it 'returns win when there are three x in a row' do
		@game = Game.new
		expect(win_with_x_line).to eq("Player 1 wins!")
	end	
	it 'returns win when there are three x in a row' do
		@game = Game.new
		expect(@game.play(0, 1)).to eq(nil)
	end	
end
