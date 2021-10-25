class CreateLists < ActiveRecord::Migration[6.1]
  def change
    create_table :lists do |t|
      t.string :list_title
      t.references :user
      
      t.timestamps
    end
  end
end
