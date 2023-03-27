class GenreSerializer < ActiveModel::Serializer
  attributes :id, :action, :drama, :horror, :anime, :comedy
end
