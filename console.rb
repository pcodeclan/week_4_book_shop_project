require ('sinatra')
require ('sinatra/contrib/all')
also_reload( '../models/*' )

require_relative('controllers/books_controller')
require_relative('controllers/publishers_controller')

get '/' do
  erb(:index)
end
