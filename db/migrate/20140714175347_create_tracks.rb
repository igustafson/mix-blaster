class CreateTracks < ActiveRecord::Migration
  def change
    create_table :tracks do |t|
      t.references :mixtape, index: true
      t.string :title
      t.string :artist
      t.integer :duration
      t.integer :position

      t.timestamps
    end
  end
end
