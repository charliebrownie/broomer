class RankingController < ApplicationController
  def index
    # @tweets = Tweet.order("created_at DESC").page(params[:page]).per(5)
    @all_ranks = Tweet.order("likes_count DESC").limit(3)
    # @all_ranks = Tweet.find(Tweet.group(:id).order('count(likes_count) desc').limit(3).pluck(:id))
    # all_ranks = Tweet.group(:id).order('count_likes_count desc').limit(3).count(:likes_count).keys
    # @all_ranks = all_ranks.map{|id| Tweet.find(id)}
  end
end
