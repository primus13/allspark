class FilamentColor < ActiveRecord::Base
  belongs_to :filament, required: true
  belongs_to :color, required: true
  
  has_many :uniquefilaments
end
