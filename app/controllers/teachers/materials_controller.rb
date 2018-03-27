module Teachers
  class MaterialsController < BaseController
    respond_to :js

    expose :topic
    expose :material

    def create
      material.topic = topic
      material.save
    end

    delegate :destroy, to: :material

    private

    def material_params
      params.require(:material).permit(:title, :attachment)
    end
  end
end
