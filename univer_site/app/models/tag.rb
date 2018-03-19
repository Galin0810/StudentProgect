class Tag
  include Mongoid::Document
  field :title, type: String
  has_and_belongs_to_many :articles
  validates :title, presence: true
end
