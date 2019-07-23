class Tweet < ApplicationRecord
  mount_uploader :image1, ImageUploader
  mount_uploader :image2, ImageUploader
  belongs_to :user
  has_many :comments
end