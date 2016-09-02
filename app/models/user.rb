class User < ApplicationRecord
  TEMP_EMAIL_PREFIX = 'change@me'
  TEMP_EMAIL_REGEX = /\Achange@me/

  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable
  devise :database_authenticatable, :registerable, :omniauthable,
         :recoverable, :rememberable, :trackable, :validatable

  attr_accessor :skip_validation

  validates :name, :email, :phone, presence: true, unless: :skip_validation
  validates_format_of :email, without: TEMP_EMAIL_REGEX, on: :update

  def self.find_for_oauth(auth, signed_in_resource = nil)
    user = find_by(uid: auth.uid, provider: auth.provider)
    user = signed_in_resource ? signed_in_resource : user

    if user.nil?
      email_is_verified = auth.info.email && (auth.info.verified || auth.info.verified_email)
      email = auth.info.email if email_is_verified
      user = User.where(email: email).first if email

      if user.nil?
        user = User.new(
          name: auth.extra.raw_info.name,
          uid: auth.uid,
          provider: auth.provider,
          email: email ? email : "#{TEMP_EMAIL_PREFIX}-#{auth.uid}-#{auth.provider}.com",
          password: Devise.friendly_token[0,20]
        )
        user.skip_validation = true
        user.save!
      end
    end

    user
  end

  def email_verified?
    self.email && self.email !~ TEMP_EMAIL_REGEX
  end
end
