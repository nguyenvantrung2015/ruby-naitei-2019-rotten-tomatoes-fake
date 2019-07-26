User.create! name: "Admin User",
  email: "admin@gmail.com",
  password: "123456",
  password_confirmation: "123456",
  role: 0

User.create! name: "Moderator User",
  email: "user@gmail.com",
  password: "123456",
  password_confirmation: "123456",
  role: 1

25.times do |n|
  name = Faker::Name.name
  email = "critic-#{n+1}@gmail.org"
  password = "password"

  User.create! name: name,
    email: email,
    password: password,
    password_confirmation: password,
    role: 2
end

50.times do |n|
  name = Faker::Name.name
  email = "normal-#{n+1}@gmail.org"
  password = "password"

  User.create! name: name,
    email: email,
    password: password,
    password_confirmation: password,
    role: 3
end

30.times do |n|
  name = name = Faker::Lorem.sentence 3
  release_date = Faker::Date.between 2.days.ago, Date.today
  critic_score = Faker::Number.decimal 1, 1
  audience_score = Faker::Number.decimal 1, 1
  info = Faker::Lorem.paragraph 2, false, 10

  Movie.create! name: name,
    release_date: release_date,
    critic_score: critic_score,
    audience_score: audience_score,
    info: info,
    poster: open("#{Rails.root}/poster.jpg")
end

30.times do |n|
  name = name = Faker::Lorem.sentence 3
  info = Faker::Lorem.paragraph 2, false, 10

  TvShow.create! name: name,
    info: info,
    poster: open("#{Rails.root}/poster.jpg")
end

tvshows = TvShow.all
tvshows.each do |tvshow|
  Faker::Number.within(1..10).times do |n|
    info = Faker::Lorem.paragraph 2, false, 10
    tv_show_id = tvshow.id

    Season.create! info: info,
      tv_show_id: tv_show_id,
      poster: open("#{Rails.root}/poster.jpg")
  end
end

seasons = Season.all
seasons.each do |season|
  Faker::Number.within(5..25).times do |n|
    release_date = Faker::Date.between 100.days.ago, Date.today
    critic_score = Faker::Number.decimal 1, 1
    audience_score = Faker::Number.decimal 1, 1
    season_id = season.id
    info = Faker::Lorem.paragraph 2, false, 10

    Episode.create! release_date: release_date,
      critic_score: critic_score,
      audience_score: audience_score,
      season_id: season_id,
      info: info
  end
end
