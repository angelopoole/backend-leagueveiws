class ChampionlistsController < ApplicationController
    before_action :authorized
    # <Championlist id: nil, user_id: nil, champion_id: nil, created_at: nil, updated_at: nil>
    def create
        @championList = Championlist.create(user_id: @user.id, champion_id: params[:champion_id])
        render json: @championList
    end

end
