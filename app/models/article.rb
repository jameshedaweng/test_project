class Article
  include Mongoid::Document
  field :name, type: String
  field :content, type: String
  validates_presence_of :name, :message => "Name cannot be blank!" 
end
