class Project < ActiveRecord::Base
  belongs_to :user
  has_many :userfiles

  default_scope { order('created_at DESC') }

  has_attached_file :image, styles: { :medium => "300x300>", :thumb => "100x100>" }
  validates_attachment_content_type :image, :content_type => /\Aimage\/.*\Z/

  def to_s
      self.title
  end
end
