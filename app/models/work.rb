class Work < ActiveRecord::Base
  extend FriendlyId
  
  validates :title, :description, :featured_thumbnail, :presence => true
  
  friendly_id :title, use: :slugged
  
  attr_accessible :description, :title, :attachments_attributes, :attachments, :slug, :featured_thumbnail
  
  has_many :attachments, :as => :attachable, :dependent => :destroy

  accepts_nested_attributes_for :attachments  
  
  mount_uploader :featured_thumbnail, FileUploader
end
