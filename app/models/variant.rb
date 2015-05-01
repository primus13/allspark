class Variant < ActiveRecord::Base
  belongs_to :technology, required: true
  
  has_many :filament_variants
  has_many :filaments, through: :filament_variants
end
