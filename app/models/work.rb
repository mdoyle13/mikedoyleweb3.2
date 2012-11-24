class Work < ActiveRecord::Base
  extend FriendlyId
  
  friendly_id :title, use: :slugged
  
  attr_accessible :description, :title, :attachments_attributes, :attachments, :slug
  
  has_many :attachments, :as => :attachable, :dependent => :destroy

  accepts_nested_attributes_for :attachments  
end
