class Speaker < ActiveRecord::Base
  validates :name, :company, :avatar, presence: true
  mount_uploader :avatar, AvatarUploader
end
