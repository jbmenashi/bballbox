class Boxscore < ApplicationRecord
  belongs_to :player
  belongs_to :game
  validates :points, presence: true, numericality: { only_integer: true, greater_than_or_equal_to: 0 }
  validates :rebounds, presence: true, numericality: { only_integer: true, greater_than_or_equal_to: 0 }
  validates :assists, presence: true, numericality: { only_integer: true, greater_than_or_equal_to: 0 }

  def game_info(game)
    "#{self.game.opponent} - #{self.game.readable_datetime}"
  end

end
