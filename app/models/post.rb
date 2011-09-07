class Post
  include Mongoid::Document
  include Mongoid::Timestamps
  include Mongoid::Search

  field :body, :type => String
  field :date_at, :modeltype => String
  field :location, :type => String

  referenced_in :user
#  references_many :tags

  default_scope :order_by => [:date_at, :desc]
  search_in :body#, :tags => :name
end

