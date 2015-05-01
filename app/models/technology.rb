class Technology < ActiveRecord::Base
  belongs_to :category
  has_many :filament_variants 
  has_many :variants, through: :filament_variants
  has_many :filaments, through: :filament_variants
  has_many :printer
end
