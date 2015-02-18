class Article
  include Mongoid::Document
  field :name, type: String
  field :content, type: String
  field :publish_date, type: String
  belongs_to :user

  validates :name, :presence => true
end
