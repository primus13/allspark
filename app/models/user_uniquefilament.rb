class UserUniquefilament < ActiveRecord::Base
  belongs_to :user, required: true
  belongs_to :uniquefilament, required: true
end
