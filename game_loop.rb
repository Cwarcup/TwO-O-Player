class GameLoop
  def initialize(player1, player2)
    @player1 = player1
    @player2 = player2
    @current_player = player1
  end

  def change_current_player
    @current_player = if @current_player == @player1
                        @player2
                      else
                        @player1
                      end
  end

  def generate_question
    #  generate random number
    num1 = rand(0..20)
    num2 = rand(0..20)

    #  create the answer to the question
    generate_answer = num1 + num2

    # create the question
    question = "#{@current_player.name}: What does #{num1} plus #{num2} equal?"

    # ask the question
    puts question

    print 'Answer: '

    # get input from user
    answer = gets.chomp

    #  logic for determining if corect answer
    if answer.to_i == generate_answer.to_i
      puts "#{@current_player.name}: You are correct."
      puts "P1: #{@player1.lives}/3 vs P2: #{@player2.lives}/3"
    else
      puts "#{@current_player.name}: Seriously? No!"
      @current_player.lose_life
      puts "P1: #{@player1.lives}/3 vs P2: #{@player2.lives}/3"
    end
    # change to other player
    change_current_player
    puts ' ---- NEW TURN ---- '
  end

  # game initiate
  def start_game
    # run game while both players have lives
    while @player1.lives > 0 && @player2.lives > 0
      # ask the question and start game logic
      generate_question
    end
    # someone has no more lives
    puts "player #{@current_player.name} wins with a score of #{@current_player.lives}/3"
    puts ' ---- GAME OVER ---- '
    puts 'Good Bye!'
  end
end
