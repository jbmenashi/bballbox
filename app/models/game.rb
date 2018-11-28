class Game < ApplicationRecord
  has_many :boxes
  has_many :players, through: :boxes
end
