class ListSerializer < ActiveModel::Serializer
  attributes :id , :user_id , :task , :state
  belongs_to :user
end
