module Callback
  module Repository
    module Validator
      def self.call(repository)
        repository.valid?
      end
    end
  end
end