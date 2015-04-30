class Material < ActiveRecord::Base
  has_many :filaments
  
  validates :name, presence: true,
                    length: { minimum: 5 }
end
