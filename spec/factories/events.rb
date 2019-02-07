FactoryBot.define do
  factory :event do
    body { { id: 407526639, number: 2 } }
    event 0
  end

  trait :with_associations do
    organization
    repositories
  end

end
