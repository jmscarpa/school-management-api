class User < ApplicationRecord
  devise :database_authenticatable, :registerable, :validatable

  after_create :set_api_key!

  def picture_url
    hash = Digest::MD5.hexdigest(email)
    "https://www.gravatar.com/avatar/#{hash}"
  end

  def set_api_key!
    update(api_key: SecureRandom.urlsafe_base64)
  end
end
