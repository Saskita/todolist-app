class TasksController < ApplicationController

  def index
    # @tasks = Task.all
    @task = Task.new

    @tasks = Task.where(completed: false && :deadline >= DateTime.current).order(deadline: :asc)
    @done_tasks = Task.where(completed: true).order(deadline: :asc)
    @missed_tasks = @tasks.missed_tasks.order(deadline: :asc)
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

    render json: json_response
  end

  def edit
    @task = Task.find(params[:id])
  end

  def update
    @task = Task.find(params[:id])
    @task.update(task_params)

    respond_to do |format|
      format.html { redirect_to tasks_path }
      format.text { render partial: 'tasks/task_infos', locals: { task: @task }, formats: [:html] }
    end
  end


  def destroy
    @task = Task.find(params[:id])
    @task.destroy
    redirect_to tasks_path
  end

  private

  def json_response
    {
      html: render_to_string(partial: 'tasks/task.html', locals: { task: @task }),
      completed: @task.completed?
    }
  end

  def task_params
    params.require(:task).permit(:name, :description, :deadline, :completed)
  end
end
