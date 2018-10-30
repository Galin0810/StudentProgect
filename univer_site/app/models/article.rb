class Article
  include Mongoid::Document
  field :title, type: String
  field :date, type: DateTime
  field :content, type: String

  embeds_many :photos, cascade_callbacks: true
  accepts_nested_attributes_for :photos, allow_destroy: true

  embeds_many :videos, cascade_callbacks: true
  accepts_nested_attributes_for :videos, allow_destroy: true

  has_and_belongs_to_many :tags
  validates :title, :date, :content, presence: true
end