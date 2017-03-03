#
# Cookbook:: kitchen_vault
# Recipe:: default
#
# Copyright:: 2017, The Authors, All Rights Reserved.

# You can comment this line, or set it to true, if you want to see your converge sucessfully!
node.normal['chef-vault']['databag_fallback'] = false

dbpassword = chef_vault_item("secrets", "dbpassword")

log 'message' do
  message "DB PASSWORD OBJECT RETRIEVED FROM CHEF VAULT: #{dbpassword}"
  level :info
end

log 'message' do
  message "VALUE OF KEY 'id' FROM DB PASSWORD OBJECT: #{dbpassword['id']}"
  level :info
end

log 'message' do
  message "VALUE OF KEY 'auth' FROM DB PASSWORD OBJECT: #{dbpassword['auth']}"
  level :info
end
