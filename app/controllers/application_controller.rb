class ApplicationController < ActionController::API

  def check_secret
    signature = 'sha1=' + OpenSSL::HMAC.hexdigest(OpenSSL::Digest.new('sha1'), SECRET['secret'],
                                                  request.raw_post)

    unless Rack::Utils.secure_compare(signature, request.env['HTTP_X_HUB_SIGNATURE'])
      render json: { errors: 'access denied' }, status: 401
    end
  end
end
