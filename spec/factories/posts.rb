FactoryGirl.define do
  factory :post do
    date Date.today
    rationale "Some rationale"
    user_id 12
  end

   factory :second_post, class: "Post" do
    date Date.today + 1
    rationale "Some more content"
    user_id 12
  end
end
