require('sinatra')
require('sinatra/reloader')
require("sinatra/activerecord")
also_reload('lib/**/*.rb')
require('./lib/store')
require('./lib/shoe')
require('pg')

get('/') do
  @stores = Store.all()
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

get ('/edit/:id') do
  @store = Store.find(params.fetch("id").to_i())
  erb(:edit_store)
end

patch '/edit/:id' do
  store = Store.find(params.fetch("id").to_i())
  store.update({:name => params.fetch("rename")})
  redirect('/add/store')
end

delete('/edit/:id') do
  store = Store.find(params.fetch("id").to_i())
  store.delete()
  redirect("/add/store")
end

get ('/select_store') do
  @stores = Store.all()
  erb(:select_store)
end

get('/select_store/:id/add_shoes') do
  @shoes = Shoe.all()
  erb(:add_shoes)
end

post('/select_store/:id/add_shoes') do
  @shoe = Shoe.create(:name => params.fetch("name"))
  @shoe = Shoe.find(shoe_id().to_i())
  @shoes = Shoe.all()
  redirect("/select_store")
end
