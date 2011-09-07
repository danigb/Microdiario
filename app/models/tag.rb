class Tag
  include Mongoid::Document
  field :name

  referenced_in :post
end

