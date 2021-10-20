class CreateSongs < ActiveRecord::Migration[6.1]
  def change
    create_table :songs do |t|
      t.string :song_title
      t.integer :track_no
      t.references :musical

      t.timestamps
    end
  end
end
