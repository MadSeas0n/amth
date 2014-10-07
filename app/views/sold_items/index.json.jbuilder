json.array!(@sold_items) do |sold_item|
  json.extract! sold_item, :id, :title
  json.url sold_item_url(sold_item, format: :json)
end
