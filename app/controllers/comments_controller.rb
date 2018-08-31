class CommentsController < ApplicationController
  before_action :authenticate_user!
    
  def create
    @place = Place.find(params[:place_id])
    comment = @place.comments.create(comment_params.merge(user: current_user))
    if comment.valid?
      flash[:notice] = 'Your comment has been added.'
      redirect_to place_path(@place)
    else
      flash[:alert] = "Please fill out form correctly."
      redirect_to place_path(@place)
    end
  end
    
private
    
  def comment_params
    params.require(:comment).permit(:message, :rating)
  end
end
