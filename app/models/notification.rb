class Notification < ApplicationRecord
  default_scope -> {order(created_at: :desc)}
  belongs_to :tweet, optional: true
  belongs_to :comment
  belongs_to :visiter, class_name: "User", foreign_key: "visiter_id"
  # belongs_to :visited
end
