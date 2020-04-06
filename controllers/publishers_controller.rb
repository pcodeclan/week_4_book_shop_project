require('sinatra')
require('sinatra/contrib/all') if development?

require_relative('../models/publishers')
also_reload( '../models/*' ) #If you make any changes, this will automatically load the new changes without you having to restart the server

#INDEX
get '/publishers' do
  @publishers = Publisher.all()
  erb(:"publishers/index")
end

#NEW
get '/publishers/new' do
  @publishers = Publisher.all()
  erb(:"publishers/new")
end

#CREATE
post '/publishers' do
  new_publisher = Publisher.new(params)
  new_publisher.save()
  redirect('/publishers')
end

#SHOW
get '/publishers/:id' do
  id = params['id'].to_i
  @publishers = Publisher.find_by_id(id)
  erb(:"/publishers/show")
end

# DELETE
post '/publishers/:id/delete' do
  id = params['id'].to_i
  Publisher.delete_by_id(id)
  redirect('/publishers')
end

#EDIT
get '/publishers/:id/edit' do
  id = params['id'].to_i()
  @publishers = Publisher.find_by_id(id)
  erb(:"/publishers/edit")
end

post '/publishers/:id' do
  edited_publisher = Publisher.new(params)
  edited_publisher.update_by_id
  redirect('/publishers/' + params['id'])
end
#END EDIT
