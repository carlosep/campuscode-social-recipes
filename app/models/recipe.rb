class Recipe < ActiveRecord::Base
  belongs_to :course
  belongs_to :cuisine
  belongs_to :difficulty
  belongs_to :preference
end
