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

  def edit # page: form pré-repli
    @task = Task.find(params[:id])
  end

  def update # réception des data du form
    # params:
    # {
    #   "task"=>{"title"=>"Laundry", "detail"=>"lorem ipsum", "completed"=>"false"},
    #   "id"=>"3"
    # }

    @task = Task.find(params[:id])
    @task.update(task_params)

    redirect_to task_path(@task)
  end


  def destroy
    @task = Task.find(params[:id])
    @task.destroy

    redirect_to tasks_path, status: :see_other
  end

  private

  def task_params
    params.require(:task).permit(:title, :detail, :completed)
  end

end
