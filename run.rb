require_relative 'config/environment.rb'

# Create instances of classes and test methods
user1 = User.create(name: "Mohamed A.")
user2 = User.create(name: "Steve J.")

product1 = Product.create(name: "Selfie Stick")
product2 = Product.create(name: "Phone Case")

product1.reviews.create(user: user1, rating: 4, content: "Great product!")
product1.reviews.create(user: user2, rating: 5, content: "Excellent!")
product2.reviews.create(user: user2, rating: 3, content: "Decent product, could be better.")

puts "Reviews for Product 1:"
product1.reviews.each do |review|
  puts "#{review.user.name}: #{review.content}"
end

puts "Average rating for Product 1: #{product1.average_rating}"

puts "User's favorite product: #{user2.favorite_product.name}"

user2.reviews.where(product: product1).destroy_all

puts "Reviews for Product 1 after removal:"
product1.reviews.each do |review|
  puts "#{review.user.name}: #{review.content}"
end

