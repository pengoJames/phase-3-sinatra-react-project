puts "🌱 Seeding spices..."

# Seed your database here
buyers = Buyer.create([
  {
    name: "Jack",
    location: "Nairobi"
  },
  {
    name: "Fred",
    location: "Nairobi"
  },
  {
    name: "Ben",
    location: "Busia"
  },
  {
    name: "Faith",
    location: "Eldoret"
  },
  {
    name: "Jackline",
    location: "Mombasa"
  },
  {
    name: "John",
    location: "Kisumu"
  }
])

# items = Item.create([
#   {
#     name: "Beans",
#     category: "Cereal",
#     price: 200
#   },
#   {
#     name: "Apples",
#     category: "Fruit",
#     price: 50
#   },
#   {
#     name: "Butter",
#     category: "Dairy",
#     price: 150
#   },
#   {
#     name: "Nuts",
#     category: "Cereal",
#     price: 120
#   },
#   {
#     name: "Cheese",
#     category: "Dairy",
#     price: 170
#   },
#   {
#     name: "Berries",
#     category: "Fruit",
#     price: 250
#   }
# ])

buyers.map do |buyer|

  
  Item.create(
    name: "Beans",
    category: "Fruit",
    price: 200,
    buyer_id: buyer.id
  )
end

puts "✅ Done seeding!"
