class Favorite < ApplicationRecord
  belongs_to :user
  belongs_to :blog

  mount_uploader :image, ImageUploader
end
