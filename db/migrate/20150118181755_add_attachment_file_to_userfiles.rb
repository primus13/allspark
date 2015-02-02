class AddAttachmentFileToUserfiles < ActiveRecord::Migration
  def self.up
    change_table :userfiles do |t|
      t.attachment :file
    end
  end

  def self.down
    remove_attachment :userfiles, :file
  end
end
