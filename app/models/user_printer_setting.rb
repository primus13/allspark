class UserPrinterSetting < ActiveRecord::Base
  belongs_to :user, required: true
  belongs_to :user_printer_setup, required: true
  belongs_to :user_filament_variant, required: true
end
