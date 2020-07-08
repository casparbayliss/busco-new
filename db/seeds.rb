# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# CASPAR AND HIS SHOP
caspar = User.create(
    first_name: "Caspar",
    last_name: "Bayliss",
    email: "caspar@busco.com",
    password: "topsecret",
    password_confirmation: "topsecret",
    shopkeeper: true
)
# Caspar's shop
Shop.create(
    user_id: 1,
    name: "Caspar's shoe shop",
    category: "Clothing",
    address: "109a High St, Godalming GU7 1AQ",
    description: "High-end shoes"
)
# Caspar's products
Product.create(
    shop_id: 1,
    name: "Leather Boots",
    price: 40,
    quantity: 1,
    description: "Brown genuine leather boots",
    weight: 0.8,
)
Product.create(
    shop_id: 1,
    name: "Black loafers",
    price: 45,
    quantity: 1,
    description: "Good quality loafers, black",
    weight: 1,
)
Product.create(
    shop_id: 1,
    name: "Navy boat shoes",
    price: 15,
    quantity: 1,
    description: "Navy boat shoes, leather",
    weight: 0.5,
)
Product.create(
    shop_id: 1,
    name: "Doc Martins",
    price: 60,
    quantity: 1,
    description: "Real Doc Martins",
    weight: 2,
)
Product.create(
    shop_id: 1,
    name: "Chelsea boots",
    price: 55,
    quantity: 1,
    description: "Great quality boots",
    weight: 1.8,
)

# JONATHAN AND HIS SHOP
jonathan = User.create(
    first_name: "Jonathan",
    last_name: "Andrew",
    email: "jonathan@busco.com",
    password: "topsecret",
    password_confirmation: "topsecret",
    shopkeeper: true
)
#Jonathan's shop
Shop.create(
    user_id: 2,
    name: "Godalming food store",
    category: "Food and drink",
    address: "7-11 High St, Godalming GU7 1AZ",
    description: "Local produce"
)
# Jonathan's products
Product.create(
    shop_id: 2,
    name: "Carrots",
    price: 0.6,
    quantity: 5,
    description: "Large, British carrots",
    weight: 1.2,
)
Product.create(
    shop_id: 2,
    name: "Apples",
    price: 1,
    quantity: 7,
    description: "Bramley apples, grown nearby",
    weight: 2.5,
)
Product.create(
    shop_id: 2,
    name: "Bread",
    price: 0.8,
    quantity: 1,
    description: "Wholemeal loaf",
    weight: 1,
)
Product.create(
    shop_id: 2,
    name: "Cherries",
    price: 1.5,
    quantity: 20,
    description: "Large packet of British cherries",
    weight: 1,
)

# SARAH AND HER SHOP
sarah = User.create(
    first_name: "Sarah",
    last_name: "Bowes",
    email: "sarah@busco.com",
    password: "topsecret",
    password_confirmation: "topsecret",
    shopkeeper: true
)
# Sarah's shop
Shop.create(
    user_id: 3,
    name: "Milford Butchers",
    category: "Food and drink",
    address: "Church St, Godalming GU7 1ER",
    description: "Ethical, pasture-fed meat, farm to table"
)
# Sarah's products
Product.create(
    shop_id: 3,
    name: "Beef",
    price: 4,
    quantity: 1,
    description: "Knepp farm beef",
    weight: 2,
)
Product.create(
    shop_id: 3,
    name: "Pork",
    price: 3,
    quantity: 6,
    description: "Six pork and apple sausages",
    weight: 2.5,
)
Product.create(
    shop_id: 3,
    name: "Chicken",
    price: 2.5,
    quantity: 1,
    description: "Ethically raised chicken",
    weight: 2,
)

# WALTER, THE CONSUMER
walter = User.create(
    first_name: "Walter",
    last_name: "Bridgeman",
    email: "walter@busco.com",
    password: "topsecret",
    password_confirmation: "topsecret",
    shopkeeper: false
)
