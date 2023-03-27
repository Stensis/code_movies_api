class DramaSerializer < ActiveModel::Serializer
  attributes :id, :title, :image, :cast, :ratings
end
