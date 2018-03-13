class Photo
  include Mongoid::Document
  field :title, type: String
  belongs_to :article
end
