class ActionSerializer < ActiveModel::Serializer
  attributes :id, :title, :image, :cast, :ratings, :created_at
end
