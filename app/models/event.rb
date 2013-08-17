class Event < ActiveRecord::Base
  attr_accessible :date, :description, :photo, :title
  mount_uploader :photo, PhotoUploader 
  default_scope :order => 'created_at'
  paginates_per 5
end
