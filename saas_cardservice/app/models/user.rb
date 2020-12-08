class User < ActiveRecord::Base

  def self.create_user! (user_param)
    user_param[:session_token] = SecureRandom.base64
    User.create!(user_param)
  end

  def self.session_token (user_param)
    user_param[:session_token]
  end

  def self.user_id(user_param)
    user_param[:user_id]
  end

  def self.email(user_param)
    user_param[:email]
  end

end