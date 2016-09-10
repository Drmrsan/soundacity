class CommentsController < ApplicationController
  def create
  	@song = Song.find(params[:song_id])
  	@comment = @song.comments.build(comment_params)
  	@comment.user_id = current_user.id
  	if @comment.save
  		redirect_to :back
  	else
  		redirect_to :back
  	end
  end

  def destroy
  end

  private
  	def comment_params
  		params.require(:comment).permit(:content)
  	end
end
