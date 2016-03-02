fallout_4 = Game.create({
  title: "Fallout 4",
  genre: "RPG",
  developer: "Bethesda Game Studios",
  publisher: "Bethesda Softworks",
  release_date: DateTime.new(2015, 10, 10),
  description: "As the sole survivor of Vault 111, you enter a world destroyed by nuclear war. Every second is a fight for survival, and every choice is yours. Only you can rebuild and determine the fate of the Wasteland. Welcome home!"
  })

the_witcher_3 = Game.create({
  title: "The Witcher 3: Wild Hunt",
  genre: "RPG",
  developer: "CD Projekt RED",
  publisher: "CD Projekt",
  release_date: DateTime.new(2015, 5, 19),
  description: "In the game, players battle against the world's many dangers using swords and magic, while interacting with non-player characters and completing side quests and main missions to progress through the story."
  })

destiny = Game.create({
  title: "Destiny",
  genre: "RPG, FPS",
  developer: "Bungie",
  publisher: "Activision",
  release_date: DateTime.new(2014, 9, 9),
  description: "The Guardians are tasked with reviving a celestial being called the Traveler, while journeying to different planets to investigate and destroy the alien threats before humanity is completely wiped out."
  })

forza_6 = Game.create({
  title: "Forza 6",
  genre: "Racing",
  developer: "Turn 10 Studios",
  publisher: "Microsoft Studios",
  release_date: DateTime.new(2015, 9, 18),
  description: "Forza Motorsport 6 is a racing video game developed by Turn 10 Studios and published by Microsoft Studios for the Xbox One. Forza Motorsport 6 features more than 450 cars."
  })

Review.create([
  {
    name: "Donald Duck",
    description: "The Witcher 3 makes what should have been a terrifying risk look like the most natural evolution in the world.",
    rating: 4,
    game: the_witcher_3
  },
  {
    name: "Stan Marsh",
    description: "The grafics are ok though. But this game is just not that good..",
    rating: 3,
    game: the_witcher_3
  },
  {
    name: "Wouter de Vos",
    description: "The Witcher 3 may be the best open-world game ever made—at least in terms of quest structure—but it’s held back by clunky controls.",
    rating: 4,
    game: the_witcher_3
  },
  {
    name: "Kenny McCormick",
    description: "Warlock rules! This game is the BEST game ever!",
    rating: 5,
    game: destiny
  },
  {
    name: "Eric Cartman",
    description: "Screw this game! I'm going home!",
    rating: 1,
    game: destiny
  },
  {
    name: "Andrew Harrison",
    description: "Destiny is the exact game the developers at Bungie have always wanted to make. Nice Job Bungie!",
    rating: 4,
    game: destiny
  }
  ])
