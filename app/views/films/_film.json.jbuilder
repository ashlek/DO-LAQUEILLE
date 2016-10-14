json.extract! film, :id, :title, :director, :note, :synopsis, :created_at, :updated_at
json.url film_url(film, format: :json)