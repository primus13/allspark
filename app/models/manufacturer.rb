class Manufacturer < ActiveRecord::Base
  belongs_to :category
  has_many :filaments
  
  validates :name, presence: true,
                    length: { minimum: 5 }
end
