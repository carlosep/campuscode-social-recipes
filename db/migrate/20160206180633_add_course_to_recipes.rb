class AddCourseToRecipes < ActiveRecord::Migration
  def change
    add_reference :recipes, :course, index: true, foreign_key: true
  end
end
