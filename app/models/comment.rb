class Comment
  include Mongoid::Document
  field :content, type: String
  field :publish_date, type: String
  belongs_to :user
  belongs_to :article

  validates :content, :presence => true
end
