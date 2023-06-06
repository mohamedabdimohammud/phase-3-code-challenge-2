require_relative 'config/environment'

# Create instances of classes and test methods
user1 = User.create(name: "Mohamed A.")
user2 = User.create(name: "Steve J.")

product1 = Product.create(name: "Selfie Stick")
product2 = Product.create(name: "Phone Case")

product1.leave_review(user1, 4, "Great product!")
product1.leave_review(user2, 5, "Excellent!")
product2.leave_review(user2, 3, "Decent product, could be better.")

puts "Reviews for Product 1:"
product1.print_all_reviews

puts "Average rating for Product 1: #{product1.average_rating}"

puts "User's favorite product: #{user2.favorite_product.name}"

user2.remove_reviews(product1)

puts "Reviews for Product 1 after removal:"
product1.print_all_reviews
