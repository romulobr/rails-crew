class CreatePlayerStates < ActiveRecord::Migration[5.2]
  def change
    create_table :player_states do |t|
      t.boolean :is_active
      t.references :player, foreign_key: true
      t.timestamps
    end
  end
end
