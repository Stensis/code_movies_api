class HorrorSerializer < ActiveModel::Serializer
  attributes :id, :title, :image, :cast, :ratings
end
