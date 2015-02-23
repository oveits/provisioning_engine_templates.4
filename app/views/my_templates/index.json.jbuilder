json.array!(@my_templates) do |my_template|
  json.extract! my_template, :id, :my_template_name, :my_template_type, :my_template_body
  json.url my_template_url(my_template, format: :json)
end
