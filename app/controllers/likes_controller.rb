class LikesController < ApplicationController
  before_action :redirect_to_sign_in_page

  def create
    @tweet = Tweet.find(params[:tweet_id])
    unless @tweet.iine?(current_user)
      @tweet.iine(current_user)
      @tweet.create_notification_by(current_user)
      @tweet.reload
      respond_to do |format|
        format.html { redirect_to request.referrer || root_url }
        format.js
      end
    end
  end

  def destroy
    @tweet = Like.find(params[:id]).tweet
    if @tweet.iine?(current_user)
      @tweet.uniine(current_user)
      @tweet.reload
      respond_to do |format|
        format.html { redirect_to request.referrer || root_url }
        format.js
      end
    end
  end

  private
  def redirect_to_sign_in_page
    unless user_signed_in?
      redirect_to new_user_session_path
    end
  end
end