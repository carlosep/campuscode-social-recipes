class AddDifficultyToRecipes < ActiveRecord::Migration
  def change
    add_reference :recipes, :difficulty, index: true, foreign_key: true
  end
end
