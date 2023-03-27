class ActionsController < ApplicationController
    before_action :set_action, only: [:show, :edit, :update, :destroy]

    def index
        @actions = Action.all
        render json: @actions
    end

    # action by id
    def show
        @actions = set_action
        render json:@actions, status: :ok
    end

    # creating new action
    def new
        @actions = Action.new
    end
    
    def edit
        @actions = Action.find(params[:id])
    end

    def create
        action = Action.create(action_params)
        render json: action, status: :created
    end

    #  updating action 
    def update
        @action = Action.find(params[:id])
      
        if @action.update(action_params)
          render json: @action
        else
          render json: { errors: @action.errors.full_messages }, status: :unprocessable_entity
        end
    end
      
    def destroy
        @actions = Action.all 
        @action = Action.find(params[:id])
        @action.destroy
        render json: @actions
    end 

    private
  
    def set_action
      @action = Action.find(params[:id])
    end

    def action_params
        params.permit(:id,:title, :image, :cast, :ratings)
    end
end
