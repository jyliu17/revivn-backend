class TicketSerializer < ActiveModel::Serializer
  attributes :id, :description, :date, :location, :status, :employee, :email
end
