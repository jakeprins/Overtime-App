FactoryGirl.define do
  factory :post do
    date "2016-11-27"
    rationale "Some Rationale"
    overtime_request 3.5
    user
  end

  factory :second_post, class: 'Post' do
    date Date.yesterday
    rationale "Some more content"
    overtime_request 0.5
    user
  end
end
