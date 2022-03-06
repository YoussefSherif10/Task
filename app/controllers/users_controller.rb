class UsersController < ApplicationController

    protect_from_forgery with: :null_session,
    if: Proc.new { |c| c.request.format =~ %r{application/json} }

    def index
        @users = User.all 
        render json: @users, include: "todolists.tasks"
    end

    def create 
        @user = User.create(name: params[:name])
        @user.save

    end

    def destroy
        @user = User.find(params[:id])
        @user.destroy
    end

    
    def update
        @user = User.find(params[:id]).update(name: params[:name])
    end

    def show
        @user = User.find(params[:id])
        render json: @user
    end

end
