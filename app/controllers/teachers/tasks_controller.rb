module Teachers
  class TasksController < BaseController
    respond_to :js

    expose :topic
    expose :task

    def create
      task.topic = topic
      task.save
    end

    delegate :destroy, to: :task

    private

    def task_params
      params.require(:task).permit(:title, :attachment)
    end
  end
end
