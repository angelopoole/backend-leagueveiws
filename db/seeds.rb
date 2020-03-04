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

require 'rest-client'
Champion.destroy_all
User.destroy_all
Championlist.destroy_all

rm = RestClient.get 'http://ddragon.leagueoflegends.com/cdn/10.4.1/data/en_US/champion.json', {accept: :json}

rm_array = JSON.parse(rm)['data']


ex = rm_array.each do |k,character| 
    Champion.create(
        name: character["name"], 
        title: character["title"],
        blurb: character["blurb"],
        image: character["image"]["full"],
        tags: character["tags"]

    )
end
# ex = rm_array.collect{|key,value| key[:name] }
# puts ex
# rm_array.keys.each do |champion|
#     puts champion["name"]
# end

byebug


# 20.times do
#     Champion.create(name: Faker::Games::LeagueOfLegends.champion , title: Faker::Games::LeagueOfLegends.rank)
# end

# ahri = Champion.create(name: 'Ahri', title: 'big desert')

# 20.times do
#     User.create(username: Faker::JapaneseMedia::SwordArtOnline.game_name , password: '123')
# end

angelo = User.create(username: 'Angelo' , password: '123')
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