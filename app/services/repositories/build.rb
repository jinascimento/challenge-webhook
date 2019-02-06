module Repositories
  module Build
    def self.call(params)
      body = params.try([:repository]).try(:to_json)
      Repository.new(body: body)
    end
  end
end