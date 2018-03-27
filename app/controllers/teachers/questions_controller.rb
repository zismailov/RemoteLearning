module Teachers
  class QuestionsController < BaseController
    respond_to :js

    expose :question
    expose :topic

    def create
      question.topic = topic
      question.save
    end

    delegate :destroy, to: :question

    private

    def question_params
      params.require(:question).permit(:title)
    end
  end
end
