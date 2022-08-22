# TwO-O-Player Math Game

- Create a 2-Player math game where players take turns to answer simple math addition problems. 
- A new math question is generated for each turn by picking two numbers between 1 and 20. 
- The player whose turn it is is prompted the question and must answer correctly or lose a life.

Details:
- Both players start with 3 lives. 
- They lose a life if they mis-answer a question. 
- At the end of every turn, the game should output the new scores for both players, so players know where they stand.

The game doesn’t end until one of the players loses all their lives. At this point, the game should announce who won and what the other player’s score is.

```
Player 1: Seriously? No!
P1: 2/3 vs P2: 3/3
----- NEW TURN -----
Player 2: What does 2 plus 6 equal?
> 8
Player 2: YES! You are correct.
P1: 2/3 vs P2: 3/3
----- NEW TURN -----
... some time later ...
Player 1 wins with a score of 1/3
----- GAME OVER -----
Good bye!
```

## Tasks

### Task 1: Extract Nouns for Classes


#### Player

- initialize
  - lives = 3

- methods
	- `lose_life`

`player attr_reader :name`
`player attr_accessor :lives`


#### Game loop

- initialize
	- player1
	- player2
	- current_player
- methods
	- generate_question
  	- `generate_answer = #{num1} + #{num2}`
  	- `puts current_player.name + "What does #{num1} plus #{num2} equal?"`
  	- `answer = gets.chomp`
	- `change_current_player` (if current_player == player1, then current_player = player2, else current_player = player1)
	- `play_game`
  	- check lives of each player
  	- does the `----- NEW TURN -----` thing 
