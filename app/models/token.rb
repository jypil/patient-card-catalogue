class Token < ActiveRecord::Base
  validates :token, presence: true
  
  def self.validate_application_key(application_key)
    if ENV['application_key'] == application_key
      true
    else
      false
    end
  end

  def self.validate_token(token_string, expiry_in_sec=5)
    token = Token.where(:token => token_string).first
    if token && (Time.now - token.created_at <= expiry_in_sec)
      true
    else
      false
    end
    true
  end

  def self.generate(length=12)
    token_string = SecureRandom.urlsafe_base64(length)
    token = Token.new(:token => token_string)
    if token.save
      token[:token]
    else
      false
    end
  end
end
