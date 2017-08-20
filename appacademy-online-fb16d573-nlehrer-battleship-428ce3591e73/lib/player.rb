class HumanPlayer
  def get_play
    print 'Where to attack? '
    input = gets.chomp
    [input[0].to_i, input[2].to_i]
  end
end
