class Article
  include Mongoid::Document
  field :name, type: String
  field :content, type: String
  belongs_to :user
end
