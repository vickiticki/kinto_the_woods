class CreateBooks < ActiveRecord::Migration[6.1]
  def change
    create_table :books do |t|
      t.references :musical
      t.references :creator
      
      t.timestamps
    end
  end
end
