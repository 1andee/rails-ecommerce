# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

puts "Seeding Data ..."

# Helper functions
def open_asset(file_name)
  File.open(Rails.root.join('db', 'seed_assets', file_name))
end

# Let's do this ...

## CATEGORIES

puts "Finding or Creating Categories ..."

cat1 = Category.find_or_create_by! name: 'PVC Figure'
cat2 = Category.find_or_create_by! name: 'Nendoroid'
cat3 = Category.find_or_create_by! name: 'Gunpla'

## PRODUCTS

puts "Re-creating Products ..."

Product.destroy_all

cat1.products.create!({
  name:  'Emilia Crystal Dress (LE)',
  description: Faker::Hipster.paragraph(4),
  image: open_asset('apparel1.jpg'),
  quantity: 10,
  price: 64.99
})

cat1.products.create!({
  name:  'Rem Crystal Dress (LE)',
  description: Faker::Hipster.paragraph(4),
  image: open_asset('apparel2.jpg'),
  quantity: 18,
  price: 124.99
})

cat1.products.create!({
  name:  'Yami To-Love Ru Darkness',
  description: Faker::Hipster.paragraph(4),
  image: open_asset('apparel3.jpg'),
  quantity: 0,
  price: 34.49
})

cat1.products.create!({
  name:  'Yami To-Love Ru (LE)',
  description: Faker::Hipster.paragraph(4),
  image: open_asset('apparel4.jpg'),
  quantity: 8,
  price: 25.00
})

cat1.products.create!({
  name:  'Lala To-Love Ru',
  description: Faker::Hipster.paragraph(4),
  image: open_asset('apparel5.jpg'),
  quantity: 8,
  price: 1_225.00
})

cat1.products.create!({
  name:  'Rikka Chuunibyou',
  description: Faker::Hipster.paragraph(4),
  image: open_asset('apparel6.jpg'),
  quantity: 82,
  price: 224.50
})


cat2.products.create!({
  name:  'Kaguya-sama Love is War',
  description: Faker::Hipster.paragraph(4),
  image: open_asset('electronics1.jpg'),
  quantity: 40,
  price: 164.49
})

cat2.products.create!({
  name:  'Random Stuff',
  description: Faker::Hipster.paragraph(4),
  image: open_asset('electronics2.jpg'),
  quantity: 3,
  price: 26.00
})

cat2.products.create!({
  name:  'Nezuko Kimetsu no Yaiba',
  description: Faker::Hipster.paragraph(4),
  image: open_asset('electronics3.jpg'),
  quantity: 32,
  price: 2_026.29
})

cat3.products.create!({
  name:  'Random Gundam',
  description: Faker::Hipster.paragraph(4),
  image: open_asset('furniture1.jpg'),
  quantity: 320,
  price: 3_052.00
})

cat3.products.create!({
  name:  'Barbatos Iron Blooded Orphans',
  description: Faker::Hipster.paragraph(4),
  image: open_asset('furniture2.jpg'),
  quantity: 2,
  price: 987.65
})

cat3.products.create!({
  name:  'Original Gundam Half-clear Ver',
  description: Faker::Hipster.paragraph(4),
  image: open_asset('furniture3.jpg'),
  quantity: 23,
  price: 2_483.75
})

## USERS

puts "Populating users table.."

User.destroy_all

User.create!({
  email: 'you@test.com',
  password_digest: '$2a$10$yNB98OCdmMOM3fLuQKMPZ.LIOLiHVJJACwwC/Bb9qe5njgEnavlGO',
  firstname: 'David',
  lastname: 'Davidsion',
  created_at: '2017-07-08 21:41:44.563279',
  updated_at: '2017-07-08 21:41:44.563279'
})

User.create!({
  email: 'bill@whitehouse.com',
  password_digest: '$2a$10$yNB98OCdmMOM3fLuQKMPZ.LIOLiHVJJACwwC/Bb9qe5njgEnavlGO',
  firstname: 'Bill',
  lastname: 'Clonton',
  created_at: '2017-07-08 21:41:44.563279',
  updated_at: '2017-07-08 21:41:44.563279'
})

User.create!({
  email: 'joe@dirt.com',
  password_digest: '$2a$10$yNB98OCdmMOM3fLuQKMPZ.LIOLiHVJJACwwC/Bb9qe5njgEnavlGO',
  firstname: 'Joe',
  lastname: 'Dirt',
  created_at: '2017-07-08 21:41:44.563279',
  updated_at: '2017-07-08 21:41:44.563279'
})

User.create!({
  email: 'ernest@ridesagain.com',
  password_digest: '$2a$10$yNB98OCdmMOM3fLuQKMPZ.LIOLiHVJJACwwC/Bb9qe5njgEnavlGO',
  firstname: 'Ernest P.',
  lastname: 'Worrell',
  created_at: '2017-07-08 21:41:44.563279',
  updated_at: '2017-07-08 21:41:44.563279'
})

## REVIEWS

puts "Populating hard-coded reviews..."

Review.destroy_all

Review.create!({
  product_id: 1,
  user_id: 1,
  description: "Greatest. Product. EVAR.",
  rating: 5
})

Review.create!({
  product_id: 1,
  user_id: 1,
  description: "Not as advertised",
  rating: 2
})

Review.create!({
  product_id: 2,
  user_id: 1,
  description: "Product is alright",
  rating: 3
})

Review.create!({
  product_id: 3,
  user_id: 1,
  description: "Great as a gift!",
  rating: 4
})

puts "DONE!"
