class Repository < ApplicationRecord
  belongs_to :event

  validates :body, presence: true
  validates_presence_of :event
end
