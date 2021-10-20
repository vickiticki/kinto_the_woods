class CreateCreators < ActiveRecord::Migration[6.1]
  def change
    create_table :creators do |t|
      t.string :name 
      t.text :bio

      t.timestamps
    end
  end
end
