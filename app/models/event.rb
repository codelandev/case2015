class Event < ActiveRecord::Base
  validates :title, :happens_at, presence: true

  scope :in_the_future, -> { where('happens_at > ?', Time.now) }
end
