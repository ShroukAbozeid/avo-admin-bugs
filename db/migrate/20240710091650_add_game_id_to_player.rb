class AddGameIdToPlayer < ActiveRecord::Migration[7.1]
  def change
    add_reference :players, :game, foreign_key: true, null: false
  end
end
