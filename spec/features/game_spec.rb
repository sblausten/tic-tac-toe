
describe 'game' do
	it 'returns win when there are three x in a row' do
		game = game.new
		game.play(0, 0)
		game.play(1, 1)
		game.play(0, 1)
		game.play(1, 0)
		expect(game.play(0, 2)).to eq("Player 1 wins!")
	end	
end
