FactoryGirl.define do
  factory :user, class: User do
    username "Fisola"
    email "adesuyifisola@gmail.com"
    password "123456"
    password_confirmation "123456"
  end
end