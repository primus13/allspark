json.project do
  json.id    @project.id
  json.title @project.title

  json.user_id @project.user ? @project.user.id : nil
end