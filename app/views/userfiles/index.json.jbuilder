json.array!(@userfiles) do |userfile|
  json.extract! userfile, :id, :title, :description, :project_id
  json.url userfile_url(userfile, format: :json)
end
