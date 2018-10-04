# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

def blog_content
  <<~EOF
    DIVE INTO CODEはアットホームな雰囲気があるらしいです。

    メンターが頑張って教えてくれるので助かります。

    頑張ってコースを受講したら、就職することができました。

    DIVE INTO CODEよかったです。
  EOF
end

users = []
10.times do |i|
  users << User.create(
    email: "test#{i}@example.com",
    name: Faker::Name.name,
    password: 'password'
  )
end

users.each do |user|
  rand(4).times do
    user.blogs.create(
      title: Faker::Book.title,
      content: Faker::Markdown.sandwich(rand(10..30))
    )
  end
end
