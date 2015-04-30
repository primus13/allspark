class Uniquefilament < ActiveRecord::Base
  belongs_to :filament_variant, required: true
  belongs_to :color, required: true
end
