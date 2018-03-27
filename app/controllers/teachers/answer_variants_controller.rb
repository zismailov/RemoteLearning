module Teachers
  class AnswerVariantsController < BaseController
    respond_to :js

    expose :question
    expose :topic, from: :question
    expose :answer_variant

    def create
      answer_variant.question = question
      answer_variant.save
    end

    delegate :destroy, to: :answer_variant

    private

    def answer_variant_params
      params.require(:answer_variant).permit(:text, :correct)
    end
  end
end
