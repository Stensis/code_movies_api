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


    private

    def user_params
        params.require(:user).permit(:id, :name, :contact, :email, :password_digest, :confirmation_password_digest)
      end
    
      def set_user
        @user = User.find(params[:id])
      end
     
end
