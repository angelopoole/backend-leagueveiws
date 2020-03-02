class UserSerializer < ActiveModel::Serializer
  attributes :username, :avatar
  has_many :championlists
  has_many :champions, through: :chanpionlists
end
