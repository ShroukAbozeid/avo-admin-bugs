class Team < ApplicationRecord
  has_many :participating_teams, dependent: :destroy
  has_many :events, through: :participating_teams
end
