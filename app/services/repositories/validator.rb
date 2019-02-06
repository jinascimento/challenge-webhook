module Repositories
  module Validator
    def self.call(repository)
      repository.valid?
    end
  end
end