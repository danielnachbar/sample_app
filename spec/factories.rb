Factory.define :user do |user|
  user.name                  "Dan Nachbar"
  user.email                 "dan@nachbar.com"
  user.password              "asdfasdf"
  user.password_confirmation "asdfasdf"
end

Factory.sequence :email do |n|
  "person-#{n}@example.com"
end

Factory.define :micropost do |micropost|
  micropost.content "Foo bar"
  micropost.association :user
end