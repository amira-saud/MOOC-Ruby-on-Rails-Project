class LecturesController < InheritedResources::Base

  private

    def lecture_params
      params.require(:lecture).permit(:content, :course_id)
    end
end
