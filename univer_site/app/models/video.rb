class Video
  include Mongoid::Document
  field :title, type: String
  field :youtube_link, type: String
  belongs_to :article
end
