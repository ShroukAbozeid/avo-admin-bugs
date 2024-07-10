class Player < ApplicationRecord
  belongs_to :game
  has_one :event, through: :games
end
