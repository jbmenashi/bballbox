class Game < ApplicationRecord
  has_many :boxscores
  has_many :players, through: :boxscores

  def readable_datetime
    "#{self.date.strftime('%B %d, %Y')}"
  end
  
end
