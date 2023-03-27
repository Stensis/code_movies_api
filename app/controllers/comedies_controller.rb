class ComediesController < ApplicationController
    before_action :set_comedy, only: [:show, :edit, :update, :destroy]

    def index
        @comedies = Comedy.all
        render json: @comedies
    end

    # action by id
    def show
        @comedies = set_comedy
        render json:@comedies, status: :ok
    end

    # creating a Comedy movie
    def new 
        @comedies = Comedy.new
    end
    
    def edit
        @comedies = Comedy.find(params[:id])
    end

    def create
        comedy = Comedy.create(comedy_params)
        render json: comedy, status: :created
    end

    # updating a Comedy movie
    def update
        @comedy = Comedy.find(params[:id])
      
        if @comedy.update(comedy_params)
          render json: @comedy
        else
          render json: { errors: @comedy.errors.full_messages }, status: :unprocessable_entity
        end
    end
      
    def destroy
        @comedies = Comedy.all 
        @comedy = Comedy.find(params[:id])
        @comedy.destroy
        render json: @comedies
    end 


    private
  
    def set_comedy
      @comedies = Comedy.find(params[:id])
    end

    def comedy_params
        params.permit(:id,:title, :image, :cast, :ratings)
    end
end
