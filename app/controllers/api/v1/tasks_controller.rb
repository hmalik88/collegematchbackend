class Api::V1::TasksController < ApplicationController

  def create
    @task = Task.new(task_params)
    if @task.valid?
      @task.save
      render json: {task: @task}, status: :created
    else
      render json: {error: 'failed to create task'}, status: :not_acceptable
    end
  end

  private

  def task_params
    params.require(:task).permit(:task, :college_track_id)
  end


end
