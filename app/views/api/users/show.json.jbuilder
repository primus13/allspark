json.user do
  json.id   @user.id
  json.email @user.email
  json.name @user.name
  json.country @user.country.name
end