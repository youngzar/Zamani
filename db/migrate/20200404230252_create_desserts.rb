class CreateDesserts < ActiveRecord::Migration
  def change
    create_table :desserts do |t|
      t.string :sweet
      t.integer :choco
      t.text :words
      t.references :entree, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
