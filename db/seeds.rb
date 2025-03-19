# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end

3.times do
  User.create!(email: Faker::Internet.email, password: 'pwdpwd')
end

8.times do
  cat = Category.create!(name: Faker::Name.name)

  3.times do
    cat.posts.create!(title: Faker::Creature::Animal.name, body: Faker::Lorem.paragraph(sentence_count: 7, supplemental: true, random_sentences_to_add: 4), creator: User.find(rand(1..3)))
  end
end