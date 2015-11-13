class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable,
         :omniauthable, omniauth_providers: [:github,:gplus]

  belongs_to :country
  has_many :projects
  has_many :user_printers
  has_many :user_heatbeds
  has_many :user_hotends
  has_many :user_nozzles
  has_many :user_printer_setups
  has_many :user_uniquefilaments
  has_many :user_printer_settings
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
