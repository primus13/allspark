class Colorfamily < ActiveRecord::Base
  has_many :colors
  validates :name, presence: true,
                    length: { minimum: 3 }
end
