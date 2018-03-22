module Teachers
  class MaterialsController < BaseController
    respond_to :html

    expose :material

    def create
      material.save

      redirect_back fallback_location: teacher_root_path
    end

    def update
      material.update(material_params)
    end

    def destroy
      material.destory

      redirect_back fallback_location: teacher_root_path
    end

    private

    def material_params
      params.require(:material).permit(:link, :attachment)
    end
  end
end
