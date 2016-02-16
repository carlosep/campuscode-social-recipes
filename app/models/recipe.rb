class Recipe < ActiveRecord::Base
  belongs_to :course
  belongs_to :cuisine
  belongs_to :difficulty
  belongs_to :preference
  belongs_to :user
  has_many :favorites
  has_attached_file :image, styles: { large: '660x600>', medium: '300x300',
                                      thumb: '150x150>' }
  validates_attachment_content_type :image, content_type: %r{\Aimage/.*\Z}

  validates :name, :cuisine_id, :course_id, :preference_id, :difficulty_id,
            :portion, :ingredient, :directions, :cooking_time, :user_id,
            presence: true
end
