class ListsController < ApplicationController
    def index
        @lists = List.all 
        render json: @lists
    end

    def create 
        @list = List.new(params[:id , :task , :state])
    end

    def destroy
        @list = List.find(params[:id])
        @list.destroy
    end

    
    def update
        @Llst = List.find(params[:id]).update(qty: params[:qty])
    end
end
