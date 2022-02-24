class ListsController < ApplicationController
    protect_from_forgery with: :null_session,
    if: Proc.new { |c| c.request.format =~ %r{application/json} }

    def index
        @lists = List.all 
        render json: @lists
    end

    def create 
        @list = List.create(task: params[:name] , state: params[:state])
        @list.save

    end

    def destroy
        @list = List.find(params[:id])
        @list.destroy
    end

    
    def update
        @list = List.find(params[:id]).update(state: params[:state])
    end

    def show
        @list = List.find(params[:id])
        render json: @list
    end
end
