include RandomData

FactoryGirl.define do
  factory :comments do
    body RandomData.random_sentence
    post
    user
  end
end
