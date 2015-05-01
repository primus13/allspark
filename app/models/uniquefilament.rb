class Uniquefilament < ActiveRecord::Base
  belongs_to :filament_variant, required: true
  belongs_to :filament_color, required: true
  belongs_to :color, through: :filament_color
end
