FactoryGirl.define do
  factory :cuisine do |c|
    c.sequence(:name) {|n| "Cuisine name. ##{n}"}
  end
end
