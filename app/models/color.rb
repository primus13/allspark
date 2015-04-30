class Color < ActiveRecord::Base
  belongs_to :colorfamily, required: true
  
  validates :name, presence: true,
                    length: { minimum: 5 }
end
