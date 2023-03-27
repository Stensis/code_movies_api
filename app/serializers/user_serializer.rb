class UserSerializer < ActiveModel::Serializer
  attributes :id, :name,:contact, :email, :password_digest,:confirmation_password_digest
end
