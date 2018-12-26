class Image < ApplicationRecord
  mount_uploader :image1, ImageUploader, presence: true
  mount_uploader :image2, ImageUploader
  mount_uploader :image3, ImageUploader
  mount_uploader :image4, ImageUploader
  belongs_to :item, optional: true
end
