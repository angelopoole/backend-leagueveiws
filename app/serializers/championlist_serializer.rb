class ChampionlistSerializer < ActiveModel::Serializer
  attributes :id, :User_id, :Champion_id
  has_many :champions
end
