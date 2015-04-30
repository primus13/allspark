class UserHotend < ActiveRecord::Base
  belongs_to :user, required: true
  belongs_to :hotend, required: true
  belongs_to :user_printer
end
