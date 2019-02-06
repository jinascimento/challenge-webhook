module Organizations
  module Build
    def self.call(params)
      body = params.try([:organization]).try(:to_json)
      Organization.new(body: body)
    end
  end
end