class CreatePlayingCards < ActiveRecord::Migration[5.2]
  def change
    create_table :playing_cards do |t|
      t.integer :number
      t.integer :color, default: 0
      t.boolean :is_rocket, default: false
      t.timestamps
    end
  end
end
