class Comment < ApplicationRecord
  belongs_to :author, class_name: "User"
  # belongs_to :photo, class_name: "Photo", foreign_key: "photo_id"
  belongs_to :photo
end
