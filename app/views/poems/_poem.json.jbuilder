json.extract! poem, :id, :title, :text, :date, :location, :meter, :created_at, :updated_at
json.url poem_url(poem, format: :json)
