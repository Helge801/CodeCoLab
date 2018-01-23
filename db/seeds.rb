require 'faker'

def em string
  puts "*" * 50
  puts "   " + string
  puts "*" * 50
end

def get_long_content
  Faker::HitchhikersGuideToTheGalaxy.quote +
  Faker::HeyArnold.quote +
  Faker::HowIMetYourMother.quote +
  Faker::Movie.quote +
  Faker::Seinfeld.quote +
  Faker::Dune.quote +
  Faker::HitchhikersGuideToTheGalaxy.quote +
  Faker::HeyArnold.quote +
  Faker::HowIMetYourMother.quote +
  Faker::Movie.quote +
  Faker::Seinfeld.quote +
  Faker::Dune.quote +
  Faker::HitchhikersGuideToTheGalaxy.quote +
  Faker::HeyArnold.quote +
  Faker::HowIMetYourMother.quote +
  Faker::Movie.quote +
  Faker::Seinfeld.quote +
  Faker::Dune.quote
end

def get_short_content
  Faker::HitchhikersGuideToTheGalaxy.quote +
  Faker::HeyArnold.quote
end

def get_random_quote
  case [*1..6].sample
    when 1 then Faker::HitchhikersGuideToTheGalaxy.quote
    when 2 then Faker::HeyArnold.quote
    when 3 then Faker::HowIMetYourMother.quote
    when 4 then Faker::Movie.quote
    when 5 then Faker::Seinfeld.quote
    when 6 then Faker::Dune.quote
  end
end

def get_profile_image
  "http://placebeard.it/#{[*145..155].sample}/#{[*145..155].sample}"
end

User.create(email: "test@test.com", 
            password: "asdfasdf", 
            password_confirmation: "asdfasdf",
            roles: "admin",
            first_name: Faker::Name.first_name,
            last_name: Faker::Name.last_name,
            username: Faker::Name.first_name + "123")

5.times do |i|
  User.create(email: "#{Faker::Name}@test.com", 
            password: "asdfasdf", 
            password_confirmation: "asdfasdf",
            roles: "user",
            first_name: Faker::Name.first_name,
            last_name: Faker::Name.last_name,
            username: Faker::Name.first_name + "123")
end

user_count = User.count

10.times do |i|
  Category.create(name: Faker::ProgrammingLanguage.name)
end

cat_count = Category.count

30.times do |i|
  SubCategory.create(name: Faker::ProgrammingLanguage.name,
                     category_id: [*1..cat_count].sample)
end

sub_count = SubCategory.count

100.times do |i|
  Post.create(body: Faker::Markdown.block_code,
              user_id: [*1..user_count].sample ,
              sub_category_id: [*1..sub_count].sample)
end






























