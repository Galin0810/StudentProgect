class Article
  include Mongoid::Document
  field :title, type: String
  field :date, type: DateTime
  field :content, type: String
  has_many :photo
  has_many :video
  has_and_belongs_to_many :tag
end