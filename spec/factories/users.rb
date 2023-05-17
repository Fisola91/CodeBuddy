FactoryBot.define do
  factory :user, class: User do
    username { "Scoal" }
    first_name { "Fisola" }
    last_name { "Adesuyi" }
    password {"123456"}
    password_confirmation {"123456"}
    bio {"A Ruby lover"}
    topic_interest { "Data Science "}
  end
end
