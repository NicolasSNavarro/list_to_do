class TasksController < ApplicationController
  def index
    @tasks = Task.all
  end

  def new
  end

  def create
    task_params = params[:task]
    title = task_params[:title]
    description = task_params[:description]

    @task = Task.new(title: title, description: description)
    @task.save!

    redirect_to tasks_path
  end

  def show
  end

  def edit
  end

  def update
  end

  def destroy
  end
end
