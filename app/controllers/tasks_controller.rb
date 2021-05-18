class TasksController < ApplicationController
  before_action :load_task, only: %i[show edit update destroy]

  def index
    @tasks = Task.all
  end

  def show
    @task = Task.find(params[:id])
  end

  def new
    @task = Task.new
  end

  def create
    @task = Task.new(task_params)
    @task.save

    redirect_to task_path(@task)
    # if
    #   # reroute to index
    #   redirect_to :tasks_path
    # else
    #   # display new
    #   render :new
    # endsd
  end

  def edit
    @task = Task.find(params[:id])
  end

  def update
    @task = Task.find(params[:id])
    @task.update(task_params)
    redirect_to task_path(@task)  # id is determined automatically
  end

  def destroy
    @task = Task.find(params[:id])
    @task.destroy
    redirect_to tasks_path
  end

  private

  def load_task
    @task = Task.find(params[:id])
  end

  # Check if params for Task.new contains exactly the required fields .. security check
  def task_params
    params.require(:task).permit(:title, :details, :completed)
  end
end
