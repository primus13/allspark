class FilamentVariant < ActiveRecord::Base
  belongs_to :filament, required: true
  belongs_to :variant, required: true
end
