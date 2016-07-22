require('sinatra')
require('sinatra/reloader')
require("sinatra/activerecord")
also_reload('lib/**/*.rb')
require('./lib/store')
require('./lib/shoe')
require('pg')

get('/') do
  erb(:index)
end

get('/add/store') do
  @stores = Store.all()
  erb(:add_store)
end

post ('/add/store') do
  @store = Store.create(:name => params.fetch("name"))
  @stores = Store.all()
  erb(:add_store)
end

get ('/edit/:id/store') do
  @store = Store.find(params.fetch("id").to_i())
  @store = Store.find(params.fetch("name"))
  erb(:edit_store)
end
