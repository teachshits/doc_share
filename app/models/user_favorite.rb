class UserFavorite < ActiveRecord::Base
  belongs_to :user
  belongs_to :favorite, :class_name => "Document", :foreign_key => "docuemnt_id"
  # attr_accessible :title, :body
end
