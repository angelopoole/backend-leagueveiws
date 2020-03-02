# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# <Championlist id: nil, user_id: nil, phampion_id: nil, created_at: nil, updated_at: nil> 
# <User id: nil, username: nil, password_digest: nil, avatar: nil, created_at: nil, updated_at: nil> 
# <Champion id: nil, name: nil, title: nil, blurb: nil, image: nil, created_at: nil, updated_at: nil> 
Champion.destroy_all
User.destroy_all
Championlist.destroy_all

20.times do
    Champion.create(name: Faker::Games::LeagueOfLegends.champion , title: Faker::Games::LeagueOfLegends.rank)
end

ahri = Champion.create(name: 'Ahri', title: 'big desert')

20.times do
    User.create(username: Faker::JapaneseMedia::SwordArtOnline.game_name , password: '123')
end

angelo = User.create(username: 'angelo' , password: '123')
victoria = User.create(username: 'victoria' , password: '123')

20.times do
    join = Championlist.create(user_id: User.all.sample.id , champion_id: Champion.all.sample.id )
end
puts "done!"

# user1.champions = champ1

# join = user.create(champ1, user1)

# 20.times do
#     HunterContract.create(hunter_id: Hunter.all.sample.id, contract_id: Contract.all.sample.id)
#  end