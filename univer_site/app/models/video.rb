class Video
  include Mongoid::Document
  field :title, type: String
  field :youtube_link, type: String
  embedded_in :article
  validates :youtube_link, presence: true
end
