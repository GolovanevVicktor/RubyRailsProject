FactoryGirl.define do
  factory :hotel do
    title "MyString"
    star_rating 1
    breakfast "MyString"
    room_desc "MyText"
    price "MyString"
    address "MyString"
    user_id 1
  end
  factory :user do
    sequence(:name)  { |n| "Person #{n}" }
    sequence(:email) { |n| "person_#{n}@example.com"}
    password "foobar"
    password_confirmation "foobar"

    factory :admin do
      admin true
    end
  end

  factory :micropost do
    content "Lorem ipsum"
    user
  end
end