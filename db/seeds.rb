
50.times do
  Hashtag.create( name: Faker::Lorem.word )
end

10.times do
  internet_name = Faker::Internet.user_name
  User.create!(
  email: Faker::Internet.email,
  username: internet_name,
  handle: "@#{internet_name}",
  password: '1234567',
  avatar_url: Faker::Avatar.image(internet_name),
  bio: Faker::Lorem.sentence(10))
end

500.times do
  tweet = Tweet.create( content: Faker::Lorem.sentence,
                        author: User.all.sample)
  rand(1..4).times do
    tweet.hashtags << Hashtag.all.sample
  end
end
