class CreateMusicals < ActiveRecord::Migration[6.1]
  def change
    create_table :musicals do |t|
      t.string :title
      t.text :synopsis 
      t.integer :release_year

      t.timestamps
    end
  end
end
