class Boxscore < ApplicationRecord
  belongs_to :player
  belongs_to :game

  def test_method
    "test"
  end
end
