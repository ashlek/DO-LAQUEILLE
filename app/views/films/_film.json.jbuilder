
json.extract! film, :id, :title, :director, :note, :synopsis
json.url film_url(film, format: :json)
