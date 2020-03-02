class Championlist < ApplicationRecord
    belongs_to :user
    belongs_to :champion
end
