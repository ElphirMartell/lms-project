class CoursesController < InheritedResources::Base

  private

    def course_params
      params.require(:course).permit(:id, :coursename, :teacher, :start_date, :end_date)
    end
end

