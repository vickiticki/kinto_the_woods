class CreateListedMusicals < ActiveRecord::Migration[6.1]
  def change
    create_table :listed_musicals do |t|
      t.references :musical
      t.references :list 

      t.timestamps
    end
  end
end
