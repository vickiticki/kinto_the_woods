class AddAlbumIdToMusicals < ActiveRecord::Migration[6.1]
  def change
    add_column :musicals, :album_id, :string
  end
end
