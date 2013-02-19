class Contact < ActiveRecord::Base
  attr_accessible :email, :message, :name, :subject
  validates :email, :message, :presence => true
end
