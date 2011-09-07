module Backend::ResourceHelper

  def attributes
    resource_class.fields.keys  - %w(_id created_at updated_at)
  end

end

