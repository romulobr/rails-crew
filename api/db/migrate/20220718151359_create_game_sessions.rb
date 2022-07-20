class CreateGameSessions < ActiveRecord::Migration[5.2]
  def change
    create_table :game_sessions do |t|
      t.string :name
      t.integer :desired_number_of_players
      t.integer :active_number_of_players
      t.timestamps
    end
  end
end
