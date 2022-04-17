class Photo < ApplicationRecord
  belongs_to :owner, class_name: "User"
  # has_many :comments, class_name: "Comment", foreign_key: "photo_id"
  has_many :comments
end
