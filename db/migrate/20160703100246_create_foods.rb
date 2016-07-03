class CreateFoods < ActiveRecord::Migration
  def change
    create_table :foods do |t|
      t.string :title
      t.text :description
      t.string :company
      t.integer :rating
      t.string :url

      t.timestamps null: false
    end
  end
end
