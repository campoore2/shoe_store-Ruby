require('capybara/rspec')
require('./app')

describe('store path' {:type => :feature}) do
  it ('creates a new store') do
    visit('/')
    expect(page).to have_content('Shoe Store')
    expect(page).to have_content('Stores we Support')
    expect(page).to have_content('Some Store')
    click_button('Edit Stores')
    visit('/add/store')
    fill_in('name' :with => 'Some Store')
    click_button('Add')
    expect(page).to have_content('Some Store')
    click_button('Home')
    vistit('/')
  end

  it('adds shoes to a store') do
    visit('/')
    click_button('Add Shoes to a Store')
    expect(page).to have_content('Some Store')
    click_link('Some Store')
    fill_in('name' :with => 'Max')
    click_button('Add')
    expect(page).to have_content('Max')
  end
end
