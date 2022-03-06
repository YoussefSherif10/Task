class TasksController < ApplicationController
    protect_from_forgery with: :null_session,
    if: Proc.new { |c| c.request.format =~ %r{application/json} }

    def index
        @tasks = Task.all 
        render json: @tasks
    end

    def create 
        @task = Task.create(todolist_id: params[:todolist_id] ,name: params[:name], state: params[:state])
        @task.save

    end

    def destroy
        @task = Task.find(params[:id])
        @task.destroy
    end

    
    def update
        @task = Task.find(params[:id]).update(name: params[:name] , state: params[:state])
    end

    def show
        @task = Task.find(params[:id])
        render json: @task
    end
end
