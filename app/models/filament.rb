class Filament < ActiveRecord::Base
  belongs_to :manufacturer, required: true
  belongs_to :material, required: true
  belongs_to :category
  
  validates :name, presence: true,
                    length: { minimum: 5 }
end
