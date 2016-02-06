class CreateRecipes < ActiveRecord::Migration
  def change
    create_table :recipes do |t|
      t.string :name
      t.integer :portion
      t.integer :cooking_time
      t.text :ingredient
      t.text :directions

      t.timestamps null: false
    end
  end
end
