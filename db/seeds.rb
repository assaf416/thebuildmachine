cheese = Tenant.create! name: "Cheese", subdomain: "cheese"
chunkybacon = Tenant.create! name: "Chunky Bacon", subdomain: "chunkybacon"
default = Tenant.create! name: "Default", subdomain: ""

Tenant.current_id = cheese.id
#
#t = Topic.create! name: "Limburger Pranks"
#t.posts.create! content: "Try putting it under someone's nose when they sleep. Haha."
#t.posts.create! content: "No Whey!"
#t.posts.create! content: "That's a Gouda one."
#
#t = Topic.create! name: "Four-Cheese Pizza Recipe"
#t.posts.create! content: "It's delicious!"
#
#t = Topic.create! name: "The best Cheesecake"
#t.posts.create! content: "Where's the best cheesecake you've tried?"
#t.posts.create! content: "I hear Ryan has a good recipe."
#
#t = Topic.create! name: "What's your favorite cheese?"
#t.posts.create! content: "What's your favorite?"
#
#User.create! email: "foo@example.com", password: "secret"
#
#Tenant.current_id = chunkybacon.id
#
#t = Topic.create! name: "It's delicious!"
#
#Tenant.current_id = default.id
#
#t = Topic.create! name: "Use \"cheese\" or \"chunkybacon\" subdomain."
#t.posts.create! content: "This is the default (blank) subdomain."
#t.posts.create! content: "Setup this Rails app with Pow so you can switch the subdomain."
#t.posts.create! content: "Try cheese or chunkybacon."


if User.count < 1
  User.create!(name: "admin", subdomain: "admin" , email: "admin@gmail.com", admin: true, password: "secret").save
  User.create!(name: "demo developer", subdomain: "developer" , email: "developer@gmail.com", developer: true, password: "secret").save
  User.create!(name: "demo tester", subdomain: "tester" , email: "tester@gmail.com", developer: true, password: "secret").save
  User.create!(name: "demo customer", subdomain: "customer" , email: "customer@gmail.com", customer: true, password: "secret").save
end

ProjectTemplate.create!( name: "rails-3.2-template")
ProjectTemplate.create!( name: "angularjs-template")
ProjectTemplate.create!( name: "sinatrarb-template")

u = User.last
Project.create!( name: u.name + "_project_1", created_by_user_id: u.id)
Project.create!( name: u.name + "_project_2", created_by_user_id: u.id)
Project.create!( name: u.name + "_project_3", created_by_user_id: u.id)



#
# Recipes 
#
Recipe.create!( name: "Rails 3.2 with login and Bootstrap", category: "Rails,application")
Recipe.create!( name: "Angular 3.2 with login and Bootstrap", category: "Angular,application")