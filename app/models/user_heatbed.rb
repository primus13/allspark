class UserHeatbed < ActiveRecord::Base
  belongs_to :user, required: true
  belongs_to :heatbed, required: true
  belongs_to :user_printer
end
