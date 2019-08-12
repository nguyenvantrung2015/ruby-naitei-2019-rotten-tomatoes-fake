FactoryBot.define do
  factory :review do
    content {"oke"}
    score {9}
    association :user
  end
end
