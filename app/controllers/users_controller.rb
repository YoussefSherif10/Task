class UsersController < ApplicationController
    def index
        @users = User.all 
        render json: @users
    end

    def create 
        @user = User.new(params.require(:name))
        @user.save
    end

    def destroy
        @user = User.find(params[:id])
        @user.destroy
    end

    
    def update
        @user = User.find(params[:id]).update(params[:name])
    end

    def show
        @user = User.find(params[:id])
        render json: @user
    end

end
