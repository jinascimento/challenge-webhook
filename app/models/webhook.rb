class Webhook < ApplicationRecord
  has_one :sender
  has_one :repository
  has_one :organization


  enum event: [:issue]
end
