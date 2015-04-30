class UserNozzle < ActiveRecord::Base
  belongs_to :user, required: true
  belongs_to :nozzle, required: true
  belongs_to :user_printer
end
