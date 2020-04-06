require('sinatra')
require('sinatra/contrib/all') if development?

require_relative('../models/books')
require_relative('../models/publishers')
also_reload( '../models/*' ) #If you make any changes, this will automatically load the new changes without you having to restart the server

#INDEX
get '/books' do
  @books = Book.all()
  @publishers = Publisher.all()
  erb(:"books/index")
end

#NEW
get '/books/new' do
  @books = Book.all()
  @publishers = Publisher.all()
  erb(:"books/new")
end

#SHOW
get '/books/:id' do
  id = params['id'].to_i
  @books = Book.find_by_id(id)
  erb(:"/books/show")
end

#CREATE
post '/books' do
  new_book = Book.new(params)
  new_book.save()
  redirect('/books')
end

# DELETE
post '/books/:id/delete' do
  id = params['id'].to_i
  Book.delete_by_id(id)
  redirect('/books')
end

#EDIT
get '/books/:id/edit' do
  id = params['id'].to_i
  @books = Book.find_by_id(id)
  erb(:"/books/edit")
end

post '/books/:id' do
  edited_book = Book.new(params)
  edited_book.update_by_id
  redirect('/books/' + params['id'])
end
#END EDIT
