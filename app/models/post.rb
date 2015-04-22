class Post < ActiveRecord::Base
  validates :title, :short_description, :content, :author, :published_at,
            presence: true

  scope :in_the_past, -> { where('published_at < ?', Time.now) }
end
