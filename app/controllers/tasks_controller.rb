class TasksController < ApplicationController


def tasks
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

    # no need for app/views/tasks/create.html.erb
    redirect_to tasks_path(@task)
end

def destroy
  @task = Task.find(params[:id])
  @task.destroy
  redirect_to tasks_path
end

def edit
  @task = Task.find(params[:id])  
end

def update
  @task = Task.find(params[:id])
  @task.update(task_params)

    # no need for app/views/tasks/update.html.erb
  redirect_to tasks_path(@task)
end

private

  def task_params
    params.require(:task).permit(:title, :details, :completed)
  end

end
