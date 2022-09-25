json.extract! energy_usage, :id, :loggedAt, :cpu, :gpu, :network, :memory, :power, :created_at, :updated_at
json.url energy_usage_url(energy_usage, format: :json)
