class DramasController < ApplicationController
    def index
        @dramas = Drama.all
        render json: @dramas
    end

    def show
        @dramas = set_drama
        render json:@dramas, status: :ok
    end

     # creating a Comedy movie
     def new 
        @dramas = Drama.new
    end
    
    def edit
        @dramas = Drama.find(params[:id])
    end

    def create
        drama = Drama.create(drama_params)
        render json: drama, status: :created
    end

     # updating a Comedy movie
     def update
        @drama = Drama.find(params[:id])
      
        if @drama.update(drama_params)
          render json: @drama
        else
          render json: { errors: @drama.errors.full_messages }, status: :unprocessable_entity
        end
    end
      
    def destroy
        @dramas = Drama.all 
        @drama = Drama.find(params[:id])
        @drama.destroy
        render json: @drama
    end 


    private
  
    def set_drama
      @horrors = Horror.find(params[:id])
    end

    def drama_params
        params.permit(:id,:title, :image, :cast, :ratings)
    end

end
