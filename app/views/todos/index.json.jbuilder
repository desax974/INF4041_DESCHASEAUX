json.array!(@todos) do |todo|
  json.extract! todo, :id, :title, :description, :date, :done
  json.url todo_url(todo, format: :json)
end
