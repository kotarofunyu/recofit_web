# json.call(@user, :name, :introduction, :picture)
json.extract! @user, :name, :introduction
json.extract! @user.picture, :url
