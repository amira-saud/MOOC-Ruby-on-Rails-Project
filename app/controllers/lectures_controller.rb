class LecturesController < InheritedResources::Base
  def spam
    lecture = Lecture.find(params[:id])
    
     unless current_user.lectures.include?(lecture)
      current_user.lectures << lecture
     end
  end

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

