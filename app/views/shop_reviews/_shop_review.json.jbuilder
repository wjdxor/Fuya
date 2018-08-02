json.extract! shop_review, :id, :title, :content, :rate, :date, :created_at, :updated_at
json.url shop_review_url(shop_review, format: :json)
