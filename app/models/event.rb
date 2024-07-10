class Event < ApplicationRecord
  has_many :participating_teams, dependent: :destroy
  has_many :teams, through: :participating_teams

  has_many :games,  dependent: :destroy
  has_many :players, through: :games
end
