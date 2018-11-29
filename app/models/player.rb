class Player < ApplicationRecord
  has_many :boxscores
  has_many :players, through: :boxscores
  validates :name, presence: true
  validates :age, presence: true, numericality: { only_integer: true }
  validates :team, presence: true, length: { is: 3 }
  validates :jersey, presence: true, numericality: { only_integer: true }
  validate :unique_jersey


  # if a player has the same team, they can't have the same jersey number

  def unique_jersey
    other_player = Player.find_by(team: self.team, jersey: self.jersey)
    if other_player
      errors.add(:jersey, "cannot have same jersey number as teammate")
    end
  end


end
