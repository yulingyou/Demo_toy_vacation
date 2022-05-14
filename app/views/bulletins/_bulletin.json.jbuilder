json.extract! bulletin, :id, :company_id, :title, :content, :created_at, :updated_at
json.url bulletin_url(bulletin, format: :json)
