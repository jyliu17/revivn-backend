class ClientSerializer < ActiveModel::Serializer
  attributes :id, :company_name, :email, :password_digest, :is_admin
end
