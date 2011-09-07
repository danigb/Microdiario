class Post
  include Mongoid::Document
  field :body, :type => String
  belongs_to :user
end

