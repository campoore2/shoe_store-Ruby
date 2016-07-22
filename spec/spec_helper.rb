ENV['RACK_ENV'] = 'test'
require("rspec")
require("pg")
require("sinatra/activerecord")
require('shoe')
require('store')
require('pry')

RSpec.configure do |config|
  config.after(:each) do
    Shoe.all().each() do |this_shoe|
      this_shoe.destroy()
    end
    Store.all().each() do |this_store|
      this_store.destroy()
    end
  end
end
