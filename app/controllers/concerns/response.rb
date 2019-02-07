module Response
  def json_response(object, status = :ok)
    render json: object, status: status
  end

  def json_not_found(params)
    {
      errors: {
        message: "Not found with parameter #{params}"
      }
    }
  end

  def json_access_denied
    { errors: 'access denied' }
  end
end