FactoryGirl.define do
  factory :recipe do |u|
    u.sequence(:name) { |n| "Name of meal ##{n}" }
    u.user
    u.cuisine
    u.course
    u.preference
    u.difficulty
    u.portion 5
    u.cooking_time 150
    u.ingredient 'list of ingredients'
    u.directions 'directions to prepare meal'
    # image { File.new("#{Rails.root}/spec/photos/bbq-ribs.jpg") }
  end
end
