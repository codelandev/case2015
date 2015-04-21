class Exhibitor < ActiveRecord::Base
  validates :logo, :name, :description, :website, presence: true
  mount_uploader :logo, LogoUploader
end
