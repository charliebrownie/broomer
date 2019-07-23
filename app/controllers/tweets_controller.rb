class TweetsController < ApplicationController
  before_action :move_to_index, except: :index

  def index
    @tweets = Tweet.order("created_at DESC").page(params[:page]).per(5)
  end

  def new 
    @tweet = Tweet.new
  end

  def create
    Tweet.create(create_params)
    # binding.pry
  end

  private
  def create_params
    params.require(:tweet).permit(:text, :image1, :image2).merge(user_id: current_user.id)
  end

  def move_to_index
    redirect_to action: :index unless user_signed_in?
  end
end

