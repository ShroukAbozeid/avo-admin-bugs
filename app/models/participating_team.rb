class ParticipatingTeam < ApplicationRecord
  belongs_to :event
  belongs_to :team
  
  validates :team_id, uniqueness: { scope: :event_id}
end
