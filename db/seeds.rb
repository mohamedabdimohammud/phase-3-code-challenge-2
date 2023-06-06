# Create users
user1 = User.create(name: "Mohamed A.")
user2 = User.create(name: "Steve J.")

# Create products
product1 = Product.create(name: "Selfie Stick")
product2 = Product.create(name: "Phone Case")

# Create reviews
Review.create(user: user1, product: product1, star_rating: 4, comment: "Great product!")
Review.create(user: user2, product: product1, star_rating: 5, comment: "Excellent!")
Review.create(user: user2, product: product2, star_rating: 3, comment: "Good product, could be better.")
