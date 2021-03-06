class JsonWebToken
  def self.encode(payload)
    JWT.encode(payload, Rails.application.secrets.SECRET_KEY_BASE)
  end

  def self.decode(token)
    JWT.decode(token, Rails.application.secrets.SECRET_KEY_BASE)[0]
  rescue
    nil
  end
end