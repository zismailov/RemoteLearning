module Teachers
  class MaterialsController < BaseController
    respond_to :html, :js

    expose :topic
    expose :material

    def create
      material.save
    end

    delegate :destroy, to: :material

    private

    def material_params
      params.require(:material).permit(:title, :attachment).merge(topic_id: topic.id)
    end
  end
end
