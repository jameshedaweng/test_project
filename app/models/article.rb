class Article
  include Mongoid::Document
  field :name, type: String
  field :content, type: String
  field :publish_date, type: String
  belongs_to :user
  has_many :comments
  has_attachment :thumbnail, accept: [:jpg, :png, :gif]

  validates :name, :presence => true
end
