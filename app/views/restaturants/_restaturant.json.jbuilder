json.extract! restaturant, :id, :name, :address, :created_at, :updated_at
json.url restaturant_url(restaturant, format: :json)
