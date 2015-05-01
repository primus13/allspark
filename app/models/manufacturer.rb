class Manufacturer < ActiveRecord::Base
  belongs_to :category
  belongs_to :country
  has_many :filaments
  
  validates :name, presence: true,
                    length: { minimum: 5 }
end
