class AnimesController < ApplicationController
    before_action :set_anime, only: [:show, :edit, :update, :destroy]

    def index
        @animes = Anime.all
        render json: @animes
    end

    # action by id
    def show
        @animes = set_anime
        render json:@animes, status: :ok
    end

    # creating a anime movie
    def new 
        @animes = Anime.new
    end
    
    def edit
        @animes = Anime.find(params[:id])
    end

    def create
        anime = Anime.create(anime_params)
        render json: anime, status: :created
    end

    # updating a anime movie
    def update
        @anime = Anime.find(params[:id])
      
        if @anime.update(anime_params)
          render json: @anime
        else
          render json: { errors: @anime.errors.full_messages }, status: :unprocessable_entity
        end
    end
      
    def destroy
        @animes = Anime.all 
        @anime = Anime.find(params[:id])
        @anime.destroy
        render json: @animes
    end 


    private
  
    def set_anime
      @animes = Anime.find(params[:id])
    end

    def anime_params
        params.permit(:id,:title, :image, :cast, :ratings)
    end

end
