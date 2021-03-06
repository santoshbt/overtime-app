FactoryGirl.define do
  factory :post do
    date Date.today
    rationale "Some Rationale"
    overtime_request 3.5
    user
  end

  factory :second_post, class: "Post" do
    date Date.yesterday
    rationale "Some more content"
    user
    overtime_request 3.5
  end
end