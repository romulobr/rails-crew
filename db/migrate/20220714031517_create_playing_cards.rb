class CreatePlayingCards < ActiveRecord::Migration[5.2]
  def change
    create_table :playing_cards do |t|

      t.timestamps
    end
  end
end
