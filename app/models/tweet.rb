class Tweet < ApplicationRecord
  mount_uploader :image1, ImageUploader
  mount_uploader :image2, ImageUploader
  belongs_to :user
  has_many :comments
  has_many :likes, dependent: :destroy
  has_many :iine_users, through: :likes, source: :user
  has_many :tweet_tags
  has_many :tags, through: :tweet_tags, dependent: :destroy

  def iine(user)
    likes.create(user_id: user.id)
  end

  def uniine(user)
    likes.find_by(user_id: user.id).destroy
  end

  def iine?(user)
    iine_users.include?(user)
  end

  def create_notification_by(current_user)
    notification=current_user.active_notifications.new(
      tweet_id: self.id,
      comment_id: 1,
      visiter_id: current_user.id,
      visited_id:self.user.id,
      action: "like"
    )
    notification.save if notification.valid?
  end
end