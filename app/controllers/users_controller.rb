class UsersController < ApplicationController
    before_action :set_user, only: [:show, :edit, :update, :destroy]

    def index
        @users = User.all
        render json: @users
    end

    def show 
        @user = set_user
        render json:@user, status: :ok
    end

    def new
        @user = User.new
    end
  
         # creates a new user
  
    def edit
          @user = User.find(params[:id])
    end
    
    def create
          @user = User.new(user_params)
        
          if @user.save
            render json: { user: @user }, status: :created
          else
            render json: { errors: @user.errors }, status: :unprocessable_entity
          end
    end

    def update
        user = User.find(params[:id])
    
        if user.update(user_params)
            render json: user, status: :ok
        else
          render json: 'edit'
        end
    end
  
    def destroy
      @user.destroy
      redirect_to users_url, notice: 'User was successfully destroyed.'
    end
  

    private

    def user_params
        params.require(:user).permit(:id, :name, :contact, :email, :password_digest, :confirmation_password_digest)
    end
    
    def set_user
        @user = User.find(params[:id])
    end
     
end
