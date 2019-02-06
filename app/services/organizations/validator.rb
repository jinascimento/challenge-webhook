module Organizations
  module Validator
    def self.call(organization)
      organization.valid?
    end
  end
end