class ApplicationController < ActionController::API
  include Response

  def check_secret

    signature = 'sha1=' + OpenSSL::HMAC.hexdigest(OpenSSL::Digest.new('sha1'), SECRET['secret'],
                                                  request.raw_post)

    unless request.env['HTTP_X_HUB_SIGNATURE']
      return json_response(json_access_denied, :unauthorized)
    end

    unless Rack::Utils.secure_compare(signature, request.env['HTTP_X_HUB_SIGNATURE'])
      json_response(json_access_denied, :unauthorized)
    end
  end
end
