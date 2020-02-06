# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.create(
  name: 'Joseph',
  password_digest: '123123',
  email: 'yosept.flores@gmail.com'
)

Post.create(
  title: 'my first post',
  content: 'the content'
)

Comment.create(
  content: 'message, content',
  user_id: 1,
  post_id: 1
)