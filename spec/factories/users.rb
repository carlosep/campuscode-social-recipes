FactoryGirl.define do
  factory :user do
    first_name 'Leonidas'
    last_name 'Of Sparta'
    email 'leonidas@sparta.gr'
    password 'thisissparta'
    admin false
  end
  factory :admin, class: User do
    first_name 'Bruce'
    last_name 'Wayne'
    email 'batman@socialrecipes.com'
    password 'ImTheAdminBitch'
    admin true
  end
end
