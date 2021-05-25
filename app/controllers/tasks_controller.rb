class TasksController < ApplicationController
  before_action :set_task, only: %i[show edit update destroy]
  # SAME AS: before_action :set_task, except: [:index, :create, :new]
  def index
    @tasks = Task.all
  end

  def show; end

  def new
    @task = Task.new
  end

  def create
    task = Task.new(tasks_params)
    task.save
    redirect_to tasks_path
  end

  def edit; end

  def update
    @task.update(tasks_params)
    redirect_to task_path(@task)
  end

  def destroy
    @task.destroy
    redirect_to tasks_path
  end

  private

  def set_task
    @task = Task.find(params[:id])
  end

  # STRONG PARAMS
  def tasks_params
    params.require(:task).permit(:title, :details, :completed)
  end
end
