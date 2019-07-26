class Task
  include Mongoid::Document
  field :title, type: String
  field :status, type: String, default: 'backlog'
  field :description, type: String
  field :due_date, type: Date
  
  embedded_in :user
end
