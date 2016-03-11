class Recipe < ActiveRecord::Base
  belongs_to :course
  belongs_to :cuisine
  belongs_to :difficulty
  belongs_to :preference
  belongs_to :user
  has_many :favorites
  mount_uploader :image, ImageUploader

  validates :name, :cuisine_id, :course_id, :preference_id, :difficulty_id,
            :portion, :ingredient, :directions, :cooking_time, :user_id,
            presence: true
  validates :image, file_size: { less_than: 1.megabyte }
end
