class GameService
  VALID_MOVES = [:rock, :paper, :scissors, :lizard, :spock].freeze

  WINNING_MOVES = {
    rock: [:lizard, :scissors],
    paper: [:rock, :spock],
    scissors: [:paper, :lizard],
    lizard: [:paper, :spock],
    spock: [:rock, :scissors]
  }.freeze

  def initialize(players)
    @players = players
  end

  def validate_moves
    return false unless @players.size == 2
    @players.all? { |player| player[:move].present? && VALID_MOVES.include?(player[:move].to_sym) }
  end

  def calculate_result
    move1 = @players.dig(0, :move)&.to_sym
    move2 = @players.dig(1, :move)&.to_sym
    player1 = @players.dig(0, :name)
    player2 = @players.dig(1, :name)

    return "It's a tie!" if move1 == move2

    if WINNING_MOVES[move1].include?(move2)
      "#{player1} wins!"
    else
      "#{player2} wins!"
    end
  end
end
