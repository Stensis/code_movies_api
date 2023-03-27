class HorrorsController < ApplicationController
    def index
        @horrors = Horror.all
        render json: @horrors
    end

    def show
        @horrors = set_horror
        render json:@horrors, status: :ok
    end

     # creating a Comedy movie
     def new 
        @horrors = Horror.new
    end
    
    def edit
        @horrors = Horror.find(params[:id])
    end

    def create
        horror = Horror.create(horror_params)
        render json: horror, status: :created
    end

     # updating a Comedy movie
     def update
        @horror = Horror.find(params[:id])
      
        if @horror.update(horror_params)
          render json: @horror
        else
          render json: { errors: @horror.errors.full_messages }, status: :unprocessable_entity
        end
    end
      
    def destroy
        @horrors = Horror.all 
        @horror = Horror.find(params[:id])
        @horror.destroy
        render json: @horrors
    end 


    private
  
    def set_horror
      @horrors = Horror.find(params[:id])
    end

    def horror_params
        params.permit(:id,:title, :image, :cast, :ratings)
    end
end
