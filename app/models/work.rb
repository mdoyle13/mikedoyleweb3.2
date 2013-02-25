class Work < ActiveRecord::Base
  extend FriendlyId
  
  acts_as_taggable
  
  validates :title, :featured_thumbnail, :presence => true
  
  friendly_id :title, use: :slugged
  
  attr_accessible :description, :title, :attachments_attributes, :attachments, :slug, :featured_thumbnail, :project_url, :tag_list
  
  has_many :attachments, :as => :attachable, :dependent => :destroy

  accepts_nested_attributes_for :attachments  
  
  mount_uploader :featured_thumbnail, FileUploader
end
