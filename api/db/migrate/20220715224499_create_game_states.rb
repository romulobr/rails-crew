class CreateGameStates < ActiveRecord::Migration[5.2]
  def change
    create_table :game_states do |t|
      t.integer :tick_count
      t.boolean :game_is_started
      t.integer :player_turn
      t.references :game_session
      t.timestamps
    end
  end
end
