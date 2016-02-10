FactoryGirl.define do
  factory :user do |u|
    u.first_name 'Leonidas'
    u.last_name 'Of Sparta'
    u.city 'Sparta'
    u.facebook 'facebook.com/kingleonidas'
    u.twitter '@kingleonidas'
    u.sequence(:email) {|n| "leonidas#{n}@sparta.gr"}
    u.password 'thisissparta'
    u.admin false
  end
  factory :admin, class: User do
    first_name 'Bruce'
    last_name 'Wayne'
    city 'Gotham'
    facebook 'facebook.com/notbatman'
    twitter '@notbatman'
    email 'batman@socialrecipes.com'
    password 'ImTheAdminBitch'
    admin true
  end
end
