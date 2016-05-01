json.array!(@document_steps) do |document_step|
  json.extract! document_step, :id, :document_id, :order, :video, :description
  json.url document_step_url(document_step, format: :json)
end
