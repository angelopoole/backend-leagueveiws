class ChampionlistSerializer < ActiveModel::Serializer
  attributes :id, :user_id, :champion_id
  belongs_to :champion
end
