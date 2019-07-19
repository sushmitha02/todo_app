class Task
  include Mongoid::Document
  field :title, type: String
  field :description, type: String
  field :due_date, type: Date
  embedded_in :user
end
