# Tic-tac-toe
Simple tic tac toe game business logic

## Example game
```irb
require './game.rb'
game = Game.new
@game.play(0, 0)
@game.play(1, 1)
@game.play(0, 1)
@game.play(1, 2)
@game.play(2, 2)
@game.play(1, 0)
"Player 2 wins!"
```

## To run tests:
```bash
git clone https://github.com/sblausten/tic-tac-toe.git
cd tic-tac-toe
bundle install
rspec
```

## Ideas to extend
Add user interface. 
Make board bigger.

