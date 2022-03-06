class TodolistsController < ApplicationController
    protect_from_forgery with: :null_session,
    if: Proc.new { |c| c.request.format =~ %r{application/json} }

    def index
        @todolists = Todolist.all 
        render json: @todolists
    end

    def create 
        @todolist = Todolist.create(user_id: params[:user_id] ,name: params[:name] , description: params[:description])
        @todolist.save

    end

    def destroy
        @todolist = Todolist.find(params[:id])
        @todolist.destroy
    end

    
    def update
        @todolist = Todolist.find(params[:id]).update(name: params[:name] , description: params[:description])
    end

    def show
        @todolist = Todolist.find(params[:id])
        render json: @todolist
    end
end
