module Teachers
  class CoursesController < BaseController
    respond_to :html

    COURSE_PARAMS = %i[title description published].freeze

    expose :course # Course.new or Course.find(id)
    expose :courses, from: :current_teacher # expose :courses, ->{ current_teacher.courses }

    def index
      respond_with courses
    end

    def new; end

    def create
      course.teacher = current_teacher
      course.save

      respond_with :teachers, course
    end

    def show
      respond_with course
    end

    private

    def course_params
      params.require(:course).permit(*COURSE_PARAMS)
    end
  end
end
