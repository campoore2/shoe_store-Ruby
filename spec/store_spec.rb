require('spec_helper')

describe(Store) do
  it "tells you the shoes available" do
    test_store = Store.create({:name => "nike"})
    test_shoe = Shoe.create({:name => "max"})
    test_store.shoes.push(test_shoe)
    expect(test_store.shoes()).to(eq([test_shoe]))
  end
end
