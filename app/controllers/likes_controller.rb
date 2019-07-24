class LikesController < ApplicationController
  before_action :authenticate_user!

  def create
    @tweet = Tweet.find(params[:tweet_id])
    unless @tweet.iine?(current_user)
      @tweet.iine(current_user)
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
end
