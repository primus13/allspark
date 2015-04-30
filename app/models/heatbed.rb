class Heatbed < ActiveRecord::Base
  belongs_to :manufacturer
  belongs_to :category
  
  validates :name, presence: true,
                    length: { minimum: 5 }
end
