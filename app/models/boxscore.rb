class Boxscore < ApplicationRecord
  belongs_to :player
  belongs_to :game

  def readable_datetime
    "#{self.date.strftime('%B %d, %Y')}"
  end

end
