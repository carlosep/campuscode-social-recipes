FactoryBot.define do
  factory :difficulty do |d|
    d.sequence(:name) { |n| "Difficulty name. ##{n}" }
  end
end
