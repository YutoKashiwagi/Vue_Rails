10.times do
  Tweet.create(content: Faker::ChuckNorris.fact)
end
