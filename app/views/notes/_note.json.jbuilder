json.extract! note, :id, :author, :body, :created_at, :updated_at
json.url note_url(note, format: :json)