class CreateParticipatingTeams < ActiveRecord::Migration[7.1]
  def change
    create_table :participating_teams do |t|
      t.references :event, null: false, foreign_key: true
      t.references :team, null: false, foreign_key: true

      t.timestamps
    end
    add_index :participating_teams, %i[event_id team_id], unique: true
  end
end
