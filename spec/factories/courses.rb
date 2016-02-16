FactoryGirl.define do
  factory :course do |c|
    c.sequence(:name) { |n| "Course name. ##{n}" }
  end
end
