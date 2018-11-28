class Player < ApplicationRecord
  has_many :boxscores
  has_many :players, through: :boxscores
end
