class Recipe < ActiveRecord::Base
  belongs_to :course
  belongs_to :cuisine
  belongs_to :difficulty
  belongs_to :preference
  belongs_to :user

  validates :name, :cuisine_id, :course_id, :preference_id, :difficulty_id,
            :portion, :ingredient, :directions, :cooking_time, :user_id,
             presence: true
end
