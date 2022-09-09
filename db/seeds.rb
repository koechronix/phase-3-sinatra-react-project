puts "🌱 Seeding tasks..."

Level.destroy_all

levels = Level.create([
    {
        id: 0,
        level: "Not speciffied"
    },

    {
        id: 1,
        level: "Cattle grazing"
    },

    {
        id: 2,
        level: "Farm works"
    },

    {
        id: 3,
        level: "Gym"
    },

    {
        id: 4,
        level: "Coding"
    },

    {
        id: 5,
        level: "Music "
    },

    {
        id: 6,
        level: "Shopping"
    },
])


tasks = Task.create([
    {
        item: "Take cows to field",
        importance: "low",
        level_id: 1
    },

    {
        item: "Go to shop",
        importance: "high",
        level_id: 6
    },

    {
        item: "Do a code challenge",
        importance: "low",
        level_id: 4
    },

    {
        item: "Listen to music",
        importance: "low",
        level_id: 5
    },

    {
        item: "To an exercise",
        importance: "high",
        level_id: 3
    }

])

puts "✅ Done seeding!"
