class Boxscore < ApplicationRecord
  belongs_to :player
  belongs_to :game

  def game_info(game)
    "#{self.game.opponent} - #{self.game.readable_datetime}"
  end

end
