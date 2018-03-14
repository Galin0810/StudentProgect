class Photo
  include Mongoid::Document
  field :title, type: String
  mount_uploader :photo, PhotoUploader
  belongs_to :article
end
