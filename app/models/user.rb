class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  belongs_to :country
  has_many :projects
  has_many :user_printers
  has_many :user_heatbeds
  has_many :user_hotends
  has_many :user_nozzles
  has_many :user_printer_setups
  has_many :user_uniquefilaments
  has_many :user_printer_settings

  def to_s
    self.email
  end
end
