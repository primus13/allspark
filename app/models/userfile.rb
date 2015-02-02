class Userfile < ActiveRecord::Base
  belongs_to :project
  has_attached_file :file, attachment_presence: true
  do_not_validate_attachment_file_type :file
end
