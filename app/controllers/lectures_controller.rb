class LecturesController < InheritedResources::Base
  def index
    @lectures = Lecture.all
  end
  def upvote 
    @lecture = Lecture.find(params[:id])
    @lecture.upvote_by current_user
    #redirect_to :back
    redirect_back fallback_location: root_path
  end  
  
  def downvote
    @lecture = Lecture.find(params[:id])
    @lecture.downvote_by current_user
    #redirect_to :back
    redirect_back fallback_location: root_path
  end

  private

    def lecture_params
      params.require(:lecture).permit(:content, :course_id, :attachment, :user_id)
    end


end

