class Category < ActiveRecord::Base
  acts_as_tree :order => :title
  attr_accessible :description, :parent_id, :title
  has_many :documents

  validates :title, :presence => true
end
