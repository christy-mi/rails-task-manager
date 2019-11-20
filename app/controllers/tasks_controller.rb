class TasksController < ApplicationController
  def index
    @tasks = Task.all
  end

  def show
    @task = Task.find(params[:id])
    # @task = @tasks.find { |task| task['id'] == params[:id].to_i }
  end

  def new
    @new = Task.new
  end

  def create
    @new = Task.find(params[:id])
    @new.save

    # redirect_to tasks_path
  end

  def edit
    @task = Task.find(params[:id])
  end

  def update
    @task = Task.find(params[:id])
  end

  def destroy
    @task = Task.find(params[:id])
    @task.destroy
  end
end
