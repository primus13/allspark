class UserPrinterSetup < ActiveRecord::Base
  belongs_to :user, required: true
  belongs_to :user_printer, required: true
  belongs_to :user_nozzle
  belongs_to :user_heatbed
  belongs_to :user_hotend
end
