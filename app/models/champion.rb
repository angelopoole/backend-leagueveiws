class Champion < ApplicationRecord
    has_many :championlists
    has_many :users, through: :championlists
end

