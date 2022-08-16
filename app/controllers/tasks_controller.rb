class TasksController < ApplicationController

  def index
    @tasks = Task.all
  end

  def show
    @task = Task.find(params[:id])
  end

  def new # page: form
    @task = Task.new # not saved yet!
  end

  def create # réception des data du form
    @task = Task.new(task_params)
    @task.save

    redirect_to task_path(@task)
  end
end
