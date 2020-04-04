class ArtworksController < ApplicationController
    def index
        if params[:artwork]
            render json: Artwork.where(title: params[:title]) 
        else
            render json: Artwork.all
        end
    end

    def show

    end

    def create

    end

    def update

    end

    def destroy

    end

    private
    def artwork_params

    end
end