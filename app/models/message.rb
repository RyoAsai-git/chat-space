class Message < ApplicationRecord
  belongs_to :user
  belongs_to :group
  validates :body, presence: true, unless: 'image.present?'

  mount_uploader :image, ImageUploader
end
