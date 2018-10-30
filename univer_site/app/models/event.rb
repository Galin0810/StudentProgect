class Event
  include Mongoid::Document
  
  field :title, type: String
  field :content, type: String
  field :date, type: DateTime

  embeds_many :photos, cascade_callbacks: true
  accepts_nested_attributes_for :photos, allow_destroy: true

  validates :title, :date, :content, presence: true
end

