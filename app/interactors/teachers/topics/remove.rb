module Teachers
  module Topics
    class Remove
      include Interactor

      delegate :topic, :teacher, to: :context

      def call
        if author_of_course? && content?
          topic.published = false
          topic.save
          context.fail!(message: "Тема скрыта, так как в теме есть материалы, вопросы или домашние задания")
        else
          topic.destroy
        end
      end

      private

      def author_of_course?
        topic.course.teacher == teacher
      end

      def content?
        topic.materials.present? || topic.questions.present? || topic.tasks.present?
      end
    end
  end
end
