class Page < ActiveRecord::Base
  validates :title, :content, presence: true
  validates :title, uniqueness: true

  has_enumeration_for :title, with: PageTitle
end
