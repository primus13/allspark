class FilamentVariant < ActiveRecord::Base
  belongs_to :filament, required: true
  belongs_to :variant, required: true
  belongs_to :technology, through: :variants
end
