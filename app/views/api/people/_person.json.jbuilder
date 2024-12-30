json.extract! person, :id, :name, :created_at, :updated_at
json.url api_person_url(person, format: :json)
