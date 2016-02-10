class Preference < ActiveRecord::Base
  has_many :recipes
  #belongs_to :user

  validates :name, presence: true
end
