require './game_loop'
require './player'

# Create a new player

player1 = Player.new('Player 1')
player2 = Player.new('Player 2')

# Create a new game loop
game = GameLoop.new(player1, player2)

# Start the game
game.start_game
