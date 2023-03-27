class AnimeSerializer < ActiveModel::Serializer
  attributes :id, :title, :image, :cast, :ratings
end
