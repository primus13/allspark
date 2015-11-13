class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable,
         :omniauthable, omniauth_providers: [:github,:gplus]

  has_many :projects
  has_many :identities

  def to_s
    self.email
  end

  def self.from_omniauth(auth)
    where(email: auth.info.email).first_or_create do |user|
      user.password = Devise.friendly_token[0,20]
    end
  end
end
