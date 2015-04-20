class Backer < ActiveRecord::Base
  self.inheritance_column = :role
  validates :role, :logo, presence: true
  mount_uploader :logo, LogoUploader
end
