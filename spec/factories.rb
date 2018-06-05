FactoryBot.define do
  factory :message do
    user 1
    date "2018-06-05 14:18:02"
    content "MyString"
  end
  factory :user do
    username "Byron_Ferrari"
    email "ibparrague@miuandes.cl"
    password "asdasdasd"
  end

end