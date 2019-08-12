FactoryBot.define do
  factory :user do
    name {"Fake User"}
    email {"fake@gmail.com"}
    password {"123456"}
    role {:critic}
  end
end
