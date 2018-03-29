module Teachers
  module Topics
    class Remove
      include Interactor

      delegate :topic, to: :context

      def call
        if author_of_course? && content?
          topic.destroy
        else
          context.fail!(message: "Тема не может быть удалена")
        end
      end

      private

      def author_of_course?
        topic.course.teacher_id == current_teacher.id
      end

      def content?
        topic.materials.present? || topic.questions.present? || topic.tasks.present?
      end
    end
  end
end
