class CommentsController < ApplicationController

  def create
    @comment = Comment.create(text: comment_params[:text], tweet_id: params[:tweet_id], user_id: current_user.id)
    # @tweet = Tweet.find(params[:tweet_id])
    # @tweet.create_notification_by(current_user)
    @comment.create_notification_by(current_user)
    # redirect_to "/tweets/#{@comment.tweet.id}"
  end

  def destroy
    @comment = Comment.find(params[:id])
    if @comment.user_id == current_user.id
      @comment.destroy
    end
  end

  private
  def comment_params
    params.require(:comment).permit(:text)
  end
end
