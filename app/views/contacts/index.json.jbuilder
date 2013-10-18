json.array!(@contacts) do |contact|
  json.extract! contact, :name, :address, :city, :state, :postal_code, :phone
  json.url contact_url(contact, format: :json)
end
