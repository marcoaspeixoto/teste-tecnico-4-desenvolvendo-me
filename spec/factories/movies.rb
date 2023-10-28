FactoryBot.define do
  factory :movie do
    show_id { Faker::Alphanumeric.alpha(number: 10) }
    media_type { 'Movie' }
    title { Faker::Movie.title }
    director { Faker::Name.name }
    cast { Faker::Lorem.sentence }
    country { Faker::Address.country }
    date_added { Faker::Date.between(from: 10.years.ago, to: Date.today) }
    release_year { Faker::Number.between(from: 1900, to: 2023) }
    rating { Faker::Lorem.word }
    duration { Faker::Time.between(from: 0.seconds.ago, to: Time.now).strftime('%H:%M:%S') }
    listed_in { Faker::Lorem.sentence }
    description { Faker::Lorem.paragraph }
  end
end
