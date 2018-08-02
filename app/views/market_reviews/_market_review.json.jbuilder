json.extract! market_review, :id, :title, :content, :rate, :date, :created_at, :updated_at
json.url market_review_url(market_review, format: :json)
