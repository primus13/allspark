class Printer < ActiveRecord::Base
  belongs_to :manufacturer
  belongs_to :category
  belongs_to :device
  
  has_many :user_printers
  
  validates :name, presence: true,
                    length: { minimum: 5 }
end
