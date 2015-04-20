class Event < ActiveRecord::Base
  validates :title, :happens_at, :speaker, presence: true
end
