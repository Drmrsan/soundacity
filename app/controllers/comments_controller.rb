class CommentsController < ApplicationController
  def create
  	@song = Song.find(params[:song_id])
  	@comment = @song.comments.build(comment_params)
  	@comment.user_id = current_user.id
  	if @comment.save

      # Notifications for the users
      (@song.users.uniq - [current_user]).each do |user|
        Notification.create(recipient: user, actor: current_user, action: "commented", notifiable: @comment)
      end

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
