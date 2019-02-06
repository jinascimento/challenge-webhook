class Event < ApplicationRecord
  has_one :sender
  has_one :repository
  has_one :organization

  validates :event, :body, presence: true

  enum event: [:issue]
end
