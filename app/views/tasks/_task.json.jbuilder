json.extract! task, :id, :title, :description, :due_date
json.url task_url(task, format: :json)
