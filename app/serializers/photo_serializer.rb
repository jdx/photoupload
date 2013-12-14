class PhotoSerializer < ActiveModel::Serializer
  attributes :id, :name, :photo_url
  
  def photo_url
    object.photo.url
  end
end
