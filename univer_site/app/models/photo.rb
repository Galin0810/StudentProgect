class Photo
  include Mongoid::Document
  field :title, type: String
  mount_uploader :photo, PhotoUploader
  embedded_in :article
  embedded_in :event
  validates :photo, presence: true
end
