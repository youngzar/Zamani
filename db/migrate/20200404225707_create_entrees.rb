class CreateEntrees < ActiveRecord::Migration
  def change
    create_table :entrees do |t|
      t.string :food
      t.integer :menu
      t.text :description

      t.timestamps null: false
    end
  end
end
