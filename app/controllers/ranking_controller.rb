class RankingController < ApplicationController
  def index
    # @tweets = Tweet.order("created_at DESC").page(params[:page]).per(5)
    @no_null = Tweet.where("likes_count is not null").order("likes_count desc").limit(6)
    @yes_null = Tweet.where("likes_count is null").limit(6 - @no_null.count)
    @all_ranks = @no_null + @yes_null
    # @all_ranks = Tweet.find(Tweet.group(:id).order('count(likes_count) desc').limit(3).pluck(:id))
    # all_ranks = Tweet.group(:id).order('count_likes_count desc').limit(3).count(:likes_count).keys
    # @all_ranks = all_ranks.map{|id| Tweet.find(id)}
  end
end
