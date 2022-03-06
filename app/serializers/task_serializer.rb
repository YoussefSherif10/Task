class TaskSerializer < ActiveModel::Serializer
  attributes :id , :name , :state
  belongs_to :todolist
end
