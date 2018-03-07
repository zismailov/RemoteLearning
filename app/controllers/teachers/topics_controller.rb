module Teachers
  class TopicsController < BaseController
    respond_to :html

    TOPIC_PARAMS = %i[title description content order_index].freeze

    expose :course
    expose :topic
    expose :topic_content, -> { Redcarpet::Markdown.new(Redcarpet::Render::HTML.new).render(topic.content) }

    def show; end

    def create
      Topics::Build.call(topic: topic, course: course)

      respond_with :teachers, course
    end

    def edit; end

    def update
      topic.update(topic_params)

      respond_with :teachers, topic.course
    end

    def destroy
      topic.destroy

      respond_with :teachers, topic.course
    end

    private

    def topic_params
      params.require(:topic).permit(*TOPIC_PARAMS)
    end
  end
end
