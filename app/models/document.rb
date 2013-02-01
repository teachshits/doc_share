class Document < ActiveRecord::Base
  mount_uploader :file, DocUploader
  attr_accessible :title

  has_many :videos
  has_many :audios

  accepts_nested_attributes_for :videos
  accepts_nested_attributes_for :audios

  validates :file,  :presence => true
  validates :title, :presence => true

end
