class ChampionsController < ApplicationController

    def index
        @champions = Champion.all
        render json: @champions
    end

    def destroy
        @champion = Champion.find_by(id: params[:id])
        @champion.destroy
    end

    def update
        @champion = Champion.find_by(id: params[:id])
        @champion.update(blurb: params[:blurb])
        render json: @champion
    end

    private 
    # def champion_params
    #     params.permit(
    #         :blurb
    #     )
    # end
end
