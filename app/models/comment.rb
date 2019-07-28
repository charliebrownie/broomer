class Comment < ApplicationRecord
  belongs_to :tweet
  belongs_to :user
  has_one :notification

  def create_notification_by(current_user)
    notification=current_user.active_notifications.new(
      tweet_id: self.tweet.id,
      visited_id: self.tweet.user.id,
      comment_id: self.id,
      action:"comment"
    )
    notification.save if notification.valid?
  end

end
