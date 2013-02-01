class Video < ActiveRecord::Base
  belongs_to :document

  mount_uploader :file, VideoUploader

  attr_accessible :description, :title

  validates :file,  :presence => true
  validates :title, :presence => true

end
