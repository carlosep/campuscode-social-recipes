class Recipe < ActiveRecord::Base
  belongs_to :course
  belongs_to :cuisine
  belongs_to :difficulty
  belongs_to :preference

  validates :name, :cuisine_id, :course_id, :preference_id, :difficulty_id,
            :portion, :ingredient, :directions, :cooking_time, presence: true
end
