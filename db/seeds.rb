# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#

user = User.create(email: 'user@domain.com', password: '123password', password_confirmation: '123password', name: 'Student name')
category = Category.create(name: 'first category')
Post.create(user_id: user.id, category_id: category.id, title: "First post", content: "this is the first content")
Post.create(user_id: user.id, category_id: category.id, title: "Second post", content: "this is the second content")

