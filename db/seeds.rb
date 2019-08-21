User.create! name: "Admin User",
  email: "admin@gmail.com",
  password: "123456",
  password_confirmation: "123456",
  role: 0,
  avatar: open("#{Rails.root}/portrait.jpg")

User.create! name: "Moderator User",
  email: "user@gmail.com",
  password: "123456",
  password_confirmation: "123456",
  role: 1,
  avatar: open("#{Rails.root}/portrait.jpg")

User.create! name: "Critic User",
  email: "critic@gmail.com",
  password: "123456",
  password_confirmation: "123456",
  role: 2,
  avatar: open("#{Rails.root}/portrait.jpg")

5.times do |n|
  name = Faker::Name.name
  email = "critic-#{n+1}@gmail.org"
  password = "password"

  User.create! name: name,
    email: email,
    password: password,
    password_confirmation: password,
    role: 2,
    avatar: open("#{Rails.root}/portrait.jpg")

end

5.times do |n|
  name = Faker::Name.name
  email = "normal-#{n+1}@gmail.org"
  password = "password"

  User.create! name: name,
    email: email,
    password: password,
    password_confirmation: password,
    role: 3,
    avatar: open("#{Rails.root}/portrait.jpg")

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
Movie.create! name: "Good Boys",
  release_date: Faker::Date.between(2.years.ago, Date.today),
  info: "After being invited to his first kissing party, 12-year-old Max (Room's Jacob Tremblay) is panicking because he doesn't know how to kiss. Eager for some pointers, Max and his best friends Thor (Brady Noon, HBO's Boardwalk Empire) and Lucas (Keith L. Williams, Fox's The Last Man On Earth) decide to use Max's dad's drone -- which Max is forbidden to touch -- to spy (they think) on a teenage couple making out next door. But when things go ridiculously wrong, the drone is destroyed. Desperate to replace it before Max's dad (Will Forte, The Last Man on Earth) gets home, the boys skip school and set off on an odyssey of epically bad decisions involving some accidentally stolen drugs, frat-house paintball, and running from both the cops and terrifying teenage girls (Life of the Party's Molly Gordon and Ocean's Eight's Midori Francis).",
  poster: open("#{Rails.root}/app/assets/images/poster/movies/7.jpeg")
Movie.create! name: "Scary Stories To Tell In The Dark",
  release_date: Faker::Date.between(2.years.ago, Date.today),
  info: "It's l968 in America. Change is blowing in the wind... but seemingly far removed from the unrest in the cities is the small town of Mill Valley where for generations, the shadow of the Bellows family has loomed large. It is in their mansion on the edge of town that Sarah, a young girl with horrible secrets, turned her tortured life into a series of scary stories, written in a book that has transcended time--stories that have a way of becoming all too real for a group of teenagers who discover Sarah's terrifying tome.",
  poster: open("#{Rails.root}/app/assets/images/poster/movies/8.jpeg")
Movie.create! name: "Dora and The Lost City of Gole",
  release_date: Faker::Date.between(2.years.ago, Date.today),
  info: "Having spent most of her life exploring the jungle with her parents, nothing could prepare Dora (Isabela Moner) for her most dangerous adventure ever -- High School. Always the explorer, Dora quickly finds herself leading Boots (her best friend, a monkey), Diego (Jeffrey Wahlberg), a mysterious jungle inhabitant (Eugenio Derbez), and a rag tag group of teens on a live-action adventure to save her parents (Eva Longoria, Michael Peña) and solve the impossible mystery behind a lost city of gold.",
  poster: open("#{Rails.root}/app/assets/images/poster/movies/9.jpeg")
Movie.create! name: "Toy Story 4",
  release_date: Faker::Date.between(2.years.ago, Date.today),
  info: "Woody (voice of Tom Hanks) has always been confident about his place in the world, and that his priority is taking care of his kid, whether that's Andy or Bonnie. So when Bonnie's beloved new craft-project-turned-toy, Forky (voice of Tony Hale), declares himself as trash and not a toy, Woody takes it upon himself to show Forky why he should embrace being a toy. But when Bonnie takes the whole gang on her family's road trip excursion, Woody ends up on an unexpected detour that includes a reunion with his long-lost friend Bo Peep (voice of Annie Potts). After years of being on her own, Bo's adventurous spirit and life on the road belie her delicate porcelain exterior. As Woody and Bo realize they're worlds apart when it comes to life as a toy, they soon come to find that's the least of their worries.",
  poster: open("#{Rails.root}/app/assets/images/poster/movies/10.jpeg")
Movie.create! name: "The Farewell",
  release_date: Faker::Date.between(2.years.ago, Date.today),
  info: "The film follows a Chinese family who, when they discover their beloved Grandmother has only a short while left to live, decide to keep her in the dark and schedule an impromptu wedding to gather before she passes. Billi, feeling like a fish out of water in her home country, struggles with the family's decision to hide the truth from her grandmother.",
  poster: open("#{Rails.root}/app/assets/images/poster/movies/11.jpeg")
Movie.create! name: "Maiden",
  release_date: Faker::Date.between(2.years.ago, Date.today),
  info: "Maiden is the story of how Tracy Edwards, a 24-year-old cook in charter boats, became the skipper of the first ever all-female crew to enter the Whitbread Round the World in 1989. Tracy's inspirational dream was opposed on all sides: her male competitors thought an all-women crew would never make it, the chauvinistic yachting press took bets on her failure, and potential sponsors rejected her, fearing they would die at sea and generate bad publicity. But Tracy refused to give up: she remortgaged her home and bought a secondhand boat, putting everything on the line to ensure the team made it to the start line. Although blessed with tremendous self-belief Tracy was also beset by crippling doubts and was only able to make it through with the support of her remarkable crew. With their help she went on to shock the sport world and prove that women are very much the equal of men.",
  poster: open("#{Rails.root}/app/assets/images/poster/movies/12.jpeg")
Movie.create! name: "Crawl",
  release_date: Faker::Date.between(2.years.ago, Date.today),
  info: "When a massive hurricane hits her Florida hometown, Haley (Kaya Scodelario) ignores evacuation orders to search for her missing father (Barry Pepper). Finding him gravely injured in the crawl space of their family home, the two become trapped by quickly encroaching floodwaters. As time runs out to escape the strengthening storm, Haley and her father discover that the rising water level is the least of their fears.",
  poster: open("#{Rails.root}/app/assets/images/poster/movies/13.jpeg")
Movie.create! name: "John Wick 3: Parabellum",
  release_date: Faker::Date.between(2.years.ago, Date.today),
  info: "In this third installment of the adrenaline-fueled action franchise, super-assassin John Wick (Reeves) returns with a $14 million price tag on his head and an army of bounty-hunting killers on his trail. After killing a member of the shadowy international assassin's guild, the High Table, John Wick is excommunicado, but the world's most ruthless hit men and women await his every turn.",
  poster: open("#{Rails.root}/app/assets/images/poster/movies/14.jpeg")
Movie.create! name: "ROCKETMAN",
  release_date: Faker::Date.between(2.years.ago, Date.today),
  info: "ROCKETMAN is an epic musical fantasy about the incredible human story of Elton John's breakthrough years. The film follows the fantastical journey of transformation from shy piano prodigy Reginald Dwight into international superstar Elton John. This inspirational story -- set to Elton John's most beloved songs and performed by star Taron Egerton -- tells the universally relatable story of how a small-town boy became one of the most iconic figures in pop culture. ROCKETMAN also stars Jamie Bell as Elton's longtime lyricist and writing partner Bernie Taupin, Richard Madden as Elton's first manager, John Reid, and Bryce Dallas Howard as Elton's mother Sheila Farebrother.",
  poster: open("#{Rails.root}/app/assets/images/poster/movies/15.jpeg")
Movie.create! name: "Avenger: Endgame",
  release_date: Faker::Date.between(2.years.ago, Date.today),
  info: "The grave course of events set in motion by Thanos that wiped out half the universe and fractured the Avengers ranks compels the remaining Avengers to take one final stand in Marvel Studios' grand conclusion to twenty-two films",
  poster: open("#{Rails.root}/app/assets/images/poster/movies/16.jpeg")
Movie.create! name: "Midsommar",
  release_date: Faker::Date.between(2.years.ago, Date.today),
  info: "Dani and Christian are a young American couple with a relationship on the brink of falling apart. But after a family tragedy keeps them together, a grieving Dani invites herself to join Christian and his friends on a trip to a once-in-a-lifetime midsummer festival in a remote Swedish village. What begins as a carefree summer holiday in a land of eternal sunlight takes a sinister turn when the insular villagers invite their guests to partake in festivities that render the pastoral paradise increasingly unnerving and viscerally disturbing. From the visionary mind of Ari Aster comes a dread-soaked cinematic fairytale where a world of darkness unfolds in broad daylight.",
  poster: open("#{Rails.root}/app/assets/images/poster/movies/17.jpeg")
Movie.create! name: "Honeyland",
  release_date: Faker::Date.between(2.years.ago, Date.today),
  info: "Nestled in an isolated mountain region deep within the Balkans, Hatidze Muratova lives with her ailing mother in a village without roads, electricity or running water. She's the last in a long line of Macedonian wild beekeepers, eking out a living farming honey in small batches to be sold in the closest city -- a mere four hours' walk away. Hatidze's peaceful existence is thrown into upheaval by the arrival of an itinerant family, with their roaring engines, seven rambunctious children and herd of cattle. Hatidze optimistically meets the promise of change with an open heart, offering up her affections, her brandy and her tried-and-true beekeeping advice.It doesn't take long however, before Hussein, the itinerant family's patriarch, senses opportunity and develops an interest in selling his own honey. Hussein has seven young mouths to feed and nowhere to graze his cattle, and he soon casts Hatidze's advice aside in his hunt for profit.",
  poster: open("#{Rails.root}/app/assets/images/poster/movies/18.jpeg")
Movie.create! name: "Wild Rose",
  release_date: Faker::Date.between(2.years.ago, Date.today),
  info: "WILD ROSE tells the complicated story of Rose-Lynn, a woman on a quest to become a country music star, while also grappling with the responsibilities of being recently released from prison and a young mother of two children.",
  poster: open("#{Rails.root}/app/assets/images/poster/movies/19.jpeg")
Movie.create! name: "Pavarotti",
  release_date: Faker::Date.between(2.years.ago, Date.today),
  info: "From the filmmaking team behind the highly-acclaimed documentary The Beatles: Eight Days A Week - The Touring Years, PAVAROTTI is a riveting film that lifts the curtain on the icon who brought opera to the people. Academy Award (R) winner Ron Howard puts audiences front row center for an exploration of The Voice...The Man...The Legend. Luciano Pavarotti gave his life to the music and a voice to the world. This cinematic event features history-making performances and intimate interviews, including never-before-seen footage and cutting-edge Dolby Atmos technology.",
  poster: open("#{Rails.root}/app/assets/images/poster/movies/20.jpeg")

TvShow.create! name: "Fleabag",
  info: "A sexually-liberated, irritable woman navigates modern life in London in this comedy. Based on Phoebe Waller-Bridge's play of the same name.",
  poster: open("#{Rails.root}/app/assets/images/poster/tvshows/1/p.jpeg")
Season.create! info: "A sexually-liberated, irritable woman navigates modern life in London in this comedy. Based on Phoebe Waller-Bridge's play of the same name.",
  tv_show: TvShow.last,
  poster: open("#{Rails.root}/app/assets/images/poster/tvshows/1/1.jpeg"),
  season_number: 1
Season.create! info: "Fleabag (Phoebe Waller-Bridge) is back for a second bite, and this time she is going toe to toe with the man upstairs. In an unexpected twist of fate, our lost little rascal meets a Priest (Andrew Scott) who jolts her into seeing the world in a different way. Picking up a year on, there are still old wounds to unpick and new ones to dress as the next chapter of Fleabag?s life takes her to hell and back.",
  tv_show: TvShow.last,
  poster: open("#{Rails.root}/app/assets/images/poster/tvshows/1/2.jpeg"),
  season_number: 2
date = Faker::Date.between 10.years.ago, 3.years.ago
Faker::Number.within(5..10).times do |n|
    release_date = date += 7.days
    season_id = 1
    info = Faker::Lorem.paragraph 15, false, 15
    episode_number = n + 1

    Episode.create! release_date: release_date,
      season_id: season_id,
      info: info,
      episode_number: episode_number
  end
date = date + 1.years
Faker::Number.within(5..10).times do |n|
    release_date = date += 7.days
    season_id = 2
    info = Faker::Lorem.paragraph 15, false, 15
    episode_number = n + 1

    Episode.create! release_date: release_date,
      season_id: season_id,
      info: info,
      episode_number: episode_number
  end

TvShow.create! name: "Barry",
  info: "A comedy about a former marine working as a hit man in the Midwest who goes to the West Coast for a job and winds up getting involved in the Los Angeles theater scene.",
  poster: open("#{Rails.root}/app/assets/images/poster/tvshows/2/p.jpeg")
Season.create! info: "Starring Bill Hader as a depressed, low-rent hitman from the Midwest. Lonely and dissatisfied in his life, he reluctantly travels to Los Angeles to execute a hit on an aspiring actor. Barry follows his mark into an acting class and ends up finding an accepting community in a group of eager hopefuls within the LA theater scene. He wants to start a new life as an actor, but his criminal past won't let him walk away -- can he find a way to balance both worlds?",
  tv_show: TvShow.last,
  poster: open("#{Rails.root}/app/assets/images/poster/tvshows/2/1.jpeg"),
  season_number: 1
Season.create! info: "No info",
  tv_show: TvShow.last,
  poster: open("#{Rails.root}/app/assets/images/poster/tvshows/2/2.jpeg"),
  season_number: 2
date = Faker::Date.between 10.years.ago, 3.years.ago
Faker::Number.within(5..10).times do |n|
    release_date = date += 7.days
    season_id = 3
    info = Faker::Lorem.paragraph 15, false, 15
    episode_number = n + 1

    Episode.create! release_date: release_date,
      season_id: season_id,
      info: info,
      episode_number: episode_number
  end
date = date + 1.years
Faker::Number.within(5..10).times do |n|
    release_date = date += 7.days
    season_id = 4
    info = Faker::Lorem.paragraph 15, false, 15
    episode_number = n + 1

    Episode.create! release_date: release_date,
      season_id: season_id,
      info: info,
      episode_number: episode_number
  end

TvShow.create! name: "Better Things",
  info: "A single mom struggles to raise three girls while trying to maintain her career as an actor.",
  poster: open("#{Rails.root}/app/assets/images/poster/tvshows/3/p.jpeg")
Season.create! info: "The first season of the FX comedy Better Things introduces audiences to Sam Fox (Pamela Adlon), a struggling actor and a single mother. Sam has three girls: the angry eldest child Max (Mikey Madison), the confused middle child Frankie (Hannah Alligood), and the sweet youngest child Duke (Olivia Edward). Aside from having to take care of her daughters on her own and face challenges in her own career, Sam has to deal with her eccentric mother Phyllis (Celia Imrie) and her unreliable ex-husband Xander (Matthew Glaive).",
  tv_show: TvShow.last,
  poster: open("#{Rails.root}/app/assets/images/poster/tvshows/3/1.jpeg"),
  season_number: 1
Season.create! info: "Sam (Pamela Adlon) struggles with feeling unappreciated by her daughters Max (Mikey Madison), Frankie (Hannah Alligood), and Duke (Olivia Edward). She tries her best to bond with them, even as she interferes with Max's inappropriate relationship with a much older man. At the same time, Sam has to fend off unwanted advances from a deadbeat friend, as well as keep the peace with her deadbeat ex-husband Xander (Matthew Glaive). Things get even more interesting when Sam meets attractive single dad Robin (Henry Thomas).",
  tv_show: TvShow.last,
  poster: open("#{Rails.root}/app/assets/images/poster/tvshows/3/2.jpeg"),
  season_number: 2
Season.create! info: "No info",
  tv_show: TvShow.last,
  poster: open("#{Rails.root}/app/assets/images/poster/tvshows/3/3.jpeg"),
  season_number: 3
date = Faker::Date.between 10.years.ago, 4.years.ago
Faker::Number.within(5..10).times do |n|
    release_date = date += 7.days
    season_id = 5
    info = Faker::Lorem.paragraph 15, false, 15
    episode_number = n + 1

    Episode.create! release_date: release_date,
      season_id: season_id,
      info: info,
      episode_number: episode_number
  end
date = date + 1.years
Faker::Number.within(5..10).times do |n|
    release_date = date += 7.days
    season_id = 6
    info = Faker::Lorem.paragraph 15, false, 15
    episode_number = n + 1

    Episode.create! release_date: release_date,
      season_id: season_id,
      info: info,
      episode_number: episode_number
  end
date = date + 1.years
Faker::Number.within(5..10).times do |n|
    release_date = date += 7.days
    season_id = 7
    info = Faker::Lorem.paragraph 15, false, 15
    episode_number = n + 1

    Episode.create! release_date: release_date,
      season_id: season_id,
      info: info,
      episode_number: episode_number
  end

TvShow.create! name: "One Day At A Time",
  info: "A remake of Norman Lear's classic 1975 sitcom revolves around a Cuban-American family headed by a recently separated military mom who's navigating a new single life while raising two children with the 'help' of her own mother and a building manager named Schneider.",
  poster: open("#{Rails.root}/app/assets/images/poster/tvshows/4/p.jpeg")
Season.create! info: "This comedy series is based on a sitcom of the same name that ran from 1975 to 1984, and follows the life of a Cuban-American family. Penelope (Justina Machado) is a nurse in the Army dealing with depression and anxiety after returning from service; Dwayne (Todd Grinnell) is Penelope's best friend, her landlord and a womanizer; Elena (Isabella Gomez) is Penelope's teenage daughter, who's dealing with personal issues that might affect her relationship with her family; Alex (Marcel Ruiz) is Penelope's son, who's trying to be popular at school; Lydia (Rita Moreno) is Penelope's very traditional Cuban mother. In Season 1, the family go through changes and difficult times, and deal with issues such as PTSD, depression and relationship drama.",
  tv_show: TvShow.last,
  poster: open("#{Rails.root}/app/assets/images/poster/tvshows/4/1.jpeg"),
  season_number: 1
Season.create! info: "Season 2 of the comedy series tackles issues that are at the forefront of present-day America. Alex (Marcel Ruiz) is taunted at school with build the wall; Lydia (Rita Moreno) has to take her citizenship test, which she finds very difficult and might result in her being deported; Penelope (Justina Machado) recalls how 9/11 changed her life and forced her to make decisions that ultimately caused her struggles with mental illness. However, not everything is dark and gloomy: This season also deals with Elena's (Isabella Gomez) love life, Dwayne's (Todd Grinnell) unwavering support of the family, and a new boyfriend for Penelope.",
  tv_show: TvShow.last,
  poster: open("#{Rails.root}/app/assets/images/poster/tvshows/4/2.jpeg"),
  season_number: 2
Season.create! info: "No info",
  tv_show: TvShow.last,
  poster: open("#{Rails.root}/app/assets/images/poster/tvshows/4/3.jpeg"),
  season_number: 3
date = Faker::Date.between 10.years.ago, 4.years.ago
Faker::Number.within(5..10).times do |n|
    release_date = date += 7.days
    season_id = 8
    info = Faker::Lorem.paragraph 15, false, 15
    episode_number = n + 1

    Episode.create! release_date: release_date,
      season_id: season_id,
      info: info,
      episode_number: episode_number
  end
date = date + 1.years
Faker::Number.within(5..10).times do |n|
    release_date = date += 7.days
    season_id = 9
    info = Faker::Lorem.paragraph 15, false, 15
    episode_number = n + 1

    Episode.create! release_date: release_date,
      season_id: season_id,
      info: info,
      episode_number: episode_number
  end
date = date + 1.years
Faker::Number.within(5..10).times do |n|
    release_date = date += 7.days
    season_id = 10
    info = Faker::Lorem.paragraph 15, false, 15
    episode_number = n + 1

    Episode.create! release_date: release_date,
      season_id: season_id,
      info: info,
      episode_number: episode_number
  end

TvShow.create! name: "The Punisher",
  info: "After exacting revenge on those responsible for the death of his wife and children, Frank Castle (Jon Bernthal) uncovers a conspiracy that runs far deeper than New York's criminal underworld. Now known throughout the city as The Punisher, he must discover the truth about injustices that affect more than his family alone.",
  poster: open("#{Rails.root}/app/assets/images/poster/tvshows/5/p.jpeg")
Season.create! info: "After disposing of the last of the gang members that killed his family, Frank Castle (Jon Bernthal)—also known as The Punisher—lives under an assumed identity and works as part of a demolition crew. However, a mysterious man who calls himself Micro (Ebon Moss-Bachrach) lures him out of hiding with video of Castle and his unit torturing an Afghan investigator named Ahmad Zubair (Shezi Sardar) in Kandahar. Castle and Micro form a shaky alliance to take down Agent Orange (Paul Schulze), Castle's superior officer in Afghanistan and the mastermind of the shady Operation Cerberus. Initially unknown to Castle, Micro sent the same video to Homeland security agent Dinah Madani (Amber Rose Revah), Zubair's former partner. The video spurs Madani to pursue Castle on her own, with the reluctant aid of her new partner Sam Stein (Michael Nathanson). Her pursuit leads her to Billy Russo (Ben Barnes), Castle's war buddy and former best friend.",
  tv_show: TvShow.last,
  poster: open("#{Rails.root}/app/assets/images/poster/tvshows/5/1.jpeg"),
  season_number: 1
Season.create! info: "Former marine-turned-vigilante Frank Castle (Jon Bernthal) has been living a quiet life on the road until he suddenly becomes embroiled in the attempted murder of a young girl (Giorgia Whigham). As he is drawn into the mystery surrounding her and those in pursuit of the information she holds, Castle attracts a new target on his back as new and old enemies force him to confront whether he should accept his destiny and embrace a life as The Punisher.",
  tv_show: TvShow.last,
  poster: open("#{Rails.root}/app/assets/images/poster/tvshows/5/2.jpeg"),
  season_number: 2
date = Faker::Date.between 10.years.ago, 3.years.ago
Faker::Number.within(5..10).times do |n|
    release_date = date += 7.days
    season_id = 11
    info = Faker::Lorem.paragraph 15, false, 15
    episode_number = n + 1

    Episode.create! release_date: release_date,
      season_id: season_id,
      info: info,
      episode_number: episode_number
  end
date = date + 1.years
Faker::Number.within(5..10).times do |n|
    release_date = date += 7.days
    season_id = 12
    info = Faker::Lorem.paragraph 15, false, 15
    episode_number = n + 1

    Episode.create! release_date: release_date,
      season_id: season_id,
      info: info,
      episode_number: episode_number
  end

TvShow.create! name: "The Flash",
  info: "After exacting revenge on those responsible for the death of his wife and children, Frank Castle (Jon Bernthal) uncovers a conspiracy that runs far deeper than New York's criminal underworld. Now known throughout the city as The Punisher, he must discover the truth about injustices that affect more than his family alone.",
  poster: open("#{Rails.root}/app/assets/images/poster/tvshows/6/p.jpeg")
Season.create! info: "Season 1 of this action-adventure series follows Barry Allen (Grant Gustin), an assistant police forensic investigator who was orphaned when his father was falsely imprisoned following the mysterious murder of his mother. The season begins with Allen being struck by lightning during an intense storm caused by a particle accelerator explosion that bathes the city with an unusual form of radiation. The strike puts Allen in a coma for nine months. ",
  tv_show: TvShow.last,
  poster: open("#{Rails.root}/app/assets/images/poster/tvshows/6/1.jpeg"),
  season_number: 1
Season.create! info: "Barry Allen returns to action in Series 2 of The Flash. Barry decides he will protect Central City by himself, however, when Atom Smasher attacks, Iris tries to persuade him to let his friends help. Meanwhile, mystery man Jay Garrick issues a warning about Zoom, a speed demon who intends to take over Central City and to destroy the Flash in the process. Elsewhere, help is needed from the Arrow, and Barry and patty grow closer, making him wonder if he can tell her that he is the Flash.",
  tv_show: TvShow.last,
  poster: open("#{Rails.root}/app/assets/images/poster/tvshows/6/2.jpeg"),
  season_number: 2
Season.create! info: "In Season 3, Barry (Grant Gustin) must deal with the consequences of his decision to interfere in the timeline and save his mother. ",
  tv_show: TvShow.last,
  poster: open("#{Rails.root}/app/assets/images/poster/tvshows/6/3.jpeg"),
  season_number: 3
Season.create! info: "With Barry/The Flash (Grant Gustin) voluntarily committing himself to imprisonment in the Speed Force, Iris (Candice Patton) forcefully leads a discouraged Team Flash in protecting Central City. However, a new villain emerges and threatens to destroy the city if the Flash doesn't come out to fight him. Against Iris' wishes, the team brings Barry out of imprisonment, though Barry seems incapacitated by his stay in the Speed Force. Later, the team realizes that by getting Barry out of prison, they played right into the hands of their new enemy, the Thinker (Neil Sandilands). ",
  tv_show: TvShow.last,
  poster: open("#{Rails.root}/app/assets/images/poster/tvshows/6/4.jpeg"),
  season_number: 4
date = Faker::Date.between 10.years.ago, 5.years.ago
Faker::Number.within(5..10).times do |n|
    release_date = date += 7.days
    season_id = 13
    info = Faker::Lorem.paragraph 15, false, 15
    episode_number = n + 1

    Episode.create! release_date: release_date,
      season_id: season_id,
      info: info,
      episode_number: episode_number
  end
date = date + 1.years
Faker::Number.within(5..10).times do |n|
    release_date = date += 7.days
    season_id = 14
    info = Faker::Lorem.paragraph 15, false, 15
    episode_number = n + 1

    Episode.create! release_date: release_date,
      season_id: season_id,
      info: info,
      episode_number: episode_number
  end
date = date + 1.years
Faker::Number.within(5..10).times do |n|
    release_date = date += 7.days
    season_id = 15
    info = Faker::Lorem.paragraph 15, false, 15
    episode_number = n + 1

    Episode.create! release_date: release_date,
      season_id: season_id,
      info: info,
      episode_number: episode_number
  end
date = date + 1.years
Faker::Number.within(5..10).times do |n|
    release_date = date += 7.days
    season_id = 16
    info = Faker::Lorem.paragraph 15, false, 15
    episode_number = n + 1

    Episode.create! release_date: release_date,
      season_id: season_id,
      info: info,
      episode_number: episode_number
  end

TvShow.create! name: "True Detective",
  info: "An anthology crime drama written by novelist Nic Pizzolatto. In the third season, a retired detective reexamines a 35-year-old case involving the 1980 disappearance of two Arkansas children. The series begins with Louisiana investigators taking another look at a 1995 murder when a similar case occurs in 2012, while the second season involves the death of a California politician and his possible ties to a career criminal.",
  poster: open("#{Rails.root}/app/assets/images/poster/tvshows/7/p.png")
Season.create! info: "Featuring the music of T Bone Burnett and directed by Cary Fukunaga, the series opens in 1995 as good ol' boy Martin Hart (Woody Harrelson) and his brooding, Texas-born partner, Rust Cohle (Matthew McConaughey), are called to the scene of a gruesome, ritualistic killing of a young woman, who was posed by a tree, adorned with deer antlers on her head and accompanied by strange symbols. Fast-forward to 2012, Hart and Cohle are grilled by another pair of detectives (Tory Kittles, Michael Potts) who are investigating a case that bears striking similarities to the one before. In between is a glimpse of 2002, when Hart and Cohle struggled to deal with their inner demons in separate but equally destructive ways. With Michelle Monaghan, Kevin Dunn, Lili Simmons and Shea Whigham.",
  tv_show: TvShow.last,
  poster: open("#{Rails.root}/app/assets/images/poster/tvshows/7/1.jpeg"),
  season_number: 1
Season.create! info: "A bizarre murder brings together three law-enforcement officers and a career criminal, each of whom must navigate a web of conspiracy and betrayal in the scorched landscapes of California.",
  tv_show: TvShow.last,
  poster: open("#{Rails.root}/app/assets/images/poster/tvshows/7/2.jpeg"),
  season_number: 2
Season.create! info: "1980: Will and Julie Purcell, the children of feuding parents Tom and Lucy Purcell, go missing a week after Halloween in West Finger, Ark. 2015: Retired detective Wayne Hays (Mahershala Ali), who originally investigated the crime, is asked to look back on the twists of the unsolved case with a true-crime documentary producer.",
  tv_show: TvShow.last,
  poster: open("#{Rails.root}/app/assets/images/poster/tvshows/7/3.jpeg"),
  season_number: 3
date = Faker::Date.between 10.years.ago, 4.years.ago
Faker::Number.within(5..10).times do |n|
    release_date = date += 7.days
    season_id = 17
    info = Faker::Lorem.paragraph 15, false, 15
    episode_number = n + 1

    Episode.create! release_date: release_date,
      season_id: season_id,
      info: info,
      episode_number: episode_number
  end
date = date + 1.years
Faker::Number.within(5..10).times do |n|
    release_date = date += 7.days
    season_id = 18
    info = Faker::Lorem.paragraph 15, false, 15
    episode_number = n + 1

    Episode.create! release_date: release_date,
      season_id: season_id,
      info: info,
      episode_number: episode_number
  end
date = date + 1.years
Faker::Number.within(5..10).times do |n|
    release_date = date += 7.days
    season_id = 19
    info = Faker::Lorem.paragraph 15, false, 15
    episode_number = n + 1

    Episode.create! release_date: release_date,
      season_id: season_id,
      info: info,
      episode_number: episode_number
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
    status = :approved

    News.create! user_id: user_id,
      title: title,
      content: content,
      status: status
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
medium.each do |media|
    celebrity_id = Faker::Number.within(1..30)
    medium_id = media.id
    role = 1

    CelebrityMedium.create! celebrity_id: celebrity_id,
      medium_id: medium_id,
      role: role
end

medium.each do |media|
  Faker::Number.within(1..1).times do |n|
    celebrity_id = Faker::Number.within(1..10)
    medium_id = media.id
    role = 0

    CelebrityMedium.create! celebrity_id: celebrity_id,
      medium_id: medium_id,
      role: role
  end
end

medium.each do |media|
  Faker::Number.within(1..1).times do |n|
    celebrity_id = Faker::Number.within(11..20)
    medium_id = media.id
    role = 0

    CelebrityMedium.create! celebrity_id: celebrity_id,
      medium_id: medium_id,
      role: role
  end
end

medium.each do |media|
  Faker::Number.within(1..1).times do |n|
    celebrity_id = Faker::Number.within(21..30)
    medium_id = media.id
    role = 0

    CelebrityMedium.create! celebrity_id: celebrity_id,
      medium_id: medium_id,
      role: role
  end
end
