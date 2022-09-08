puts "🌱 Seeding tasks..."

Level.destroy_all

# Seed your database here
Level.create(id: 1, level: "Cattle grazing")
Level.create(id: 2, level: "Farm works")
Level.create(id: 3, level: "Gym")
Level.create(id: 4, level: "Coding")
Level.create(id: 5, level: "Music")
Level.create(id: 6, level: "Shopping")

# levels = Level.create([
#     {
#         id: 1,
#         level: "Cattle grazing"
#     },

#     {
#         id: 2,
#         level: "Farm works"
#     },

#     {
#         id: 3,
#         level: "Gym"
#     },

#     {
#         id: 4,
#         level: "Coding"
#     },

#     {
#         id: 5,
#         level: "Music "
#     },

#     {
#         id: 6,
#         level: "Shopping"
#     },
# ])


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
