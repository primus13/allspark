class UserPrinter < ActiveRecord::Base
  belongs_to :user, required: true
  belongs_to :printer, required: true
end
