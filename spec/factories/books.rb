FactoryGirl.define do
  factory :book do
    title Faker::Name.title
    publish_date Faker::Date.between(
      30.years.ago, Date.today
    )
    isbn Faker::Code.isbn(13)
    author
    tag
  end

end
