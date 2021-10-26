class CreateItems < ActiveRecord::Migration[6.1]
  def change
    create_table :items do |t|
      t.references :musical
      t.references :list

      t.timestamps
    end
  end
end
