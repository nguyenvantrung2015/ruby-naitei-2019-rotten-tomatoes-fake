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

User.create! name: "Critic User",
  email: "critic@gmail.com",
  password: "123456",
  password_confirmation: "123456",
  role: 2

5.times do |n|
  name = Faker::Name.name
  email = "critic-#{n+1}@gmail.org"
  password = "password"

  User.create! name: name,
    email: email,
    password: password,
    password_confirmation: password,
    role: 2
end

5.times do |n|
  name = Faker::Name.name
  email = "normal-#{n+1}@gmail.org"
  password = "password"

  User.create! name: name,
    email: email,
    password: password,
    password_confirmation: password,
    role: 3
end

Movie.create! name: "Black Panther",
  release_date: Faker::Date.between(2.years.ago, Date.today),
  info: "Black Panther follows T'Challa who, after the events of Captain America: Civil War, returns home to the isolated, technologically advanced African nation of Wakanda to take his place as King. However, when an old enemy reappears on the radar, T'Challa's mettle as King and Black Panther is tested when he is drawn into a conflict that puts the entire fate of Wakanda and the world at risk.",
  poster: open("#{Rails.root}/app/assets/images/poster/movies/1.jpeg")
Movie.create! name: "A Star Is Born,",
  release_date: Faker::Date.between(2.years.ago, Date.today),
  info: "In A Star Is Born, Bradley Cooper and Lady Gaga fuse their considerable talents to depict the raw and passionate tale of Jack and Ally, two artistic souls coming together, on stage and in life. Theirs is a complex journey through the beauty and the heartbreak of a relationship struggling to survive. In this new take on the iconic love story, four-time Oscar nominee Cooper (American Sniper, American Hustle, Silver Linings Playbook), makes his directorial debut, and also stars alongside multiple award-winning, Oscar-nominated music superstar Gaga in her first leading role in a major motion picture. Cooper portrays seasoned musician Jackson Maine, who discovers and falls in love with struggling artist Ally. She has given up on her dream to become a successful singer, until she meets Jack, who immediately sees her natural talent.",
  poster: open("#{Rails.root}/app/assets/images/poster/movies/6.jpeg")
Movie.create! name: "Mission Impossible - Fallout",
  release_date: Faker::Date.between(2.years.ago, Date.today),
  info: "The best intentions often come back to haunt you. MISSION: IMPOSSIBLE - FALLOUT finds Ethan Hunt (Tom Cruise) and his IMF team (Alec Baldwin, Simon Pegg, Ving Rhames) along with some familiar allies (Rebecca Ferguson, Michelle Monaghan) in a race against time after a mission gone wrong. Henry Cavill, Angela Bassett, and Vanessa Kirby also join the dynamic cast with filmmaker Christopher McQuarrie returning to the helm.",
  poster: open("#{Rails.root}/app/assets/images/poster/movies/2.jpeg")
Movie.create! name: "BlacKKKlansMan",
  release_date: Faker::Date.between(2.years.ago, Date.today),
  info: "From visionary filmmaker Spike Lee comes the incredible true story of an American hero. It's the early 1970s, and Ron Stallworth (John David Washington) is the first African-American detective to serve in the Colorado Springs Police Department. Determined to make a name for himself, Stallworth bravely sets out on a dangerous mission: infiltrate and expose the Ku Klux Klan. The young detective soon recruits a more seasoned colleague, Flip Zimmerman (Adam Driver), into the undercover investigation of a lifetime. Together, they team up to take down the extremist hate group as the organization aims to sanitize its violent rhetoric to appeal to the mainstream. Produced by the team behind the Academy-Award (R) winning Get Out.",
  poster: open("#{Rails.root}/app/assets/images/poster/movies/3.jpeg")
Movie.create! name: "Spider-Man: Into the Spider-Verse",
  release_date: Faker::Date.between(2.years.ago, Date.today),
  info: "Phil Lord and Christopher Miller, the creative minds behind The Lego Movie and 21 Jump Street, bring their unique talents to a fresh vision of a different Spider-Man Universe, with a groundbreaking visual style that's the first of its kind. Spider-Man: Into the Spider-Verse introduces Brooklyn teen Miles Morales, and the limitless possibilities of the Spider-Verse, where more than one can wear the mask.",
  poster: open("#{Rails.root}/app/assets/images/poster/movies/4.jpeg")
Movie.create! name: "Roma",
  release_date: Faker::Date.between(2.years.ago, Date.today),
  info: "The most personal project to date from Academy Award (R)-winning director and writer Alfonso Cuarón (Gravity, Children of Men, Y Tu Mama Tambien), ROMA follows Cleo (Yalitza Aparicio), a young domestic worker for a family in the middle-class neighborhood of Roma in Mexico City. Delivering an artful love letter to the women who raised him, Cuarón draws on his own childhood to create a vivid and emotional portrait of domestic strife and social hierarchy amidst political turmoil of the 1970s. Cuarón's first project since the groundbreaking Gravity in 2013, ROMA will be available in theaters and on Netflix later this year.",
  poster: open("#{Rails.root}/app/assets/images/poster/movies/5.jpeg")


14.times do |n|
  name = Faker::Lorem.sentence 3
  release_date = Faker::Date.between 2.years.ago, Date.today
  info = Faker::Lorem.paragraph 15, false, 15

  Movie.create! name: name,
    release_date: release_date,
    info: info,
    poster: open("#{Rails.root}/movie_poster.jpg")
end

TvShow.create! name: "Fleabag",
  info: "A hilarious and poignant window into the mind of a dry-witted, sexual, grief-riddled woman trying to make sense of the world.",
  poster: open("#{Rails.root}/app/assets/images/poster/tvshows/1/1.jpeg")
TvShow.create! name: "Barry",
  info: "A comedy about a former marine working as a hit man in the Midwest who goes to the West Coast for a job and winds up getting involved in the Los Angeles theater scene.",
  poster: open("#{Rails.root}/app/assets/images/poster/tvshows/2/1.jpeg")
TvShow.create! name: "Better Things",
  info: "A single mom struggles to raise three girls while trying to maintain her career as an actor.",
  poster: open("#{Rails.root}/app/assets/images/poster/tvshows/3/1.jpeg")
TvShow.create! name: "One Day At A Time",
  info: "A remake of Norman Lear's classic 1975 sitcom revolves around a Cuban-American family headed by a recently separated military mom who's navigating a new single life while raising two children with the 'help' of her own mother and a building manager named Schneider.",
  poster: open("#{Rails.root}/app/assets/images/poster/tvshows/4/1.jpeg")


16.times do |n|
  name = Faker::Lorem.sentence 3
  info = Faker::Lorem.paragraph 15, false, 15

  TvShow.create! name: name,
    info: info,
    poster: open("#{Rails.root}/tv_show_poster.jpg")
end

tvshows = TvShow.all
tvshows.each do |tvshow|
  Faker::Number.within(1..5).times do |n|
    info = Faker::Lorem.paragraph 15, false, 15
    tv_show_id = tvshow.id
    season_number = n + 1

    Season.create! info: info,
      tv_show_id: tv_show_id,
      poster: open("#{Rails.root}/season_poster.jpg"),
      season_number: season_number
  end
end

seasons = Season.all
seasons.each do |season|
  Faker::Number.within(5..10).times do |n|
    release_date = Faker::Date.between 10.years.ago, Date.today
    season_id = season.id
    info = Faker::Lorem.paragraph 15, false, 15
    episode_number = n + 1

    Episode.create! release_date: release_date,
      season_id: season_id,
      info: info,
      episode_number: episode_number
  end
end

30.times do |n|
  name = Faker::Name.name
  date_of_birth = Faker::Date.birthday 5, 85
  gender = Faker::Number.within(0..1)
  nationality = Faker::Nation.nationality

  Celebrity.create! name: name,
    date_of_birth: date_of_birth,
    gender: gender,
    nationality: nationality,
    portrait: open("#{Rails.root}/portrait.jpg")
end

users = User.all
users_news = users.last(users.size - 2)
users_news.each do |user|
  Faker::Number.within(0..5).times do |n|
    user_id = user.id
    title = Faker::Lorem.sentence 10
    content = Faker::Lorem.paragraph 50, false, 15

    News.create! user_id: user_id,
      title: title,
      content: content
  end
end


users = User.all
users_reviewable = users.last(users.size - 2)
medium = Medium.all
users_reviewable.each do |user|
  medium.each do |media|
    Faker::Number.within(0..1).times do |n|
      user_id = user.id
      medium_id = media.id
      content = Faker::Lorem.paragraph 5, false, 10
      score = Faker::Number.within(1..10)

      Review.create! user_id: user_id,
        medium_id: medium_id,
        content: content,
        score: score
    end
  end
end

medium = Medium.all
celebrities = Celebrity.all
medium.each do |media|
  Faker::Number.within(1..1).times do |n|
    celebrity_id = Faker::Number.within(1..30)
    medium_id = media.id
    role = Faker::Number.within(0..1)

    CelebrityMedium.create! celebrity_id: celebrity_id,
      medium_id: medium_id,
      role: role
  end
end
