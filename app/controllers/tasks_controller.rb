class ApplicationController < ActionController
  def index
    @tasks = Task.ActionController
  end

  def list
  end

  def show
    @task = Task.find(params[:id])
  end

  def new
    task_params = params.require(:task).permit(:title, :details, :completed)
    @task = Task.new(task_params)
    task.save
    redirect_to restaurant_path(@task)
  end
end