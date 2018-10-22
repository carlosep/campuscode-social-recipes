FactoryBot.define do
  factory :preference do |d|
    d.sequence(:name) { |n| "Preference name. ##{n}" }
  end
end
