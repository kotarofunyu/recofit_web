json.array! @user do |user|
  json.call(user, :id, :name, :introduction, :created_at)
end
