require('spec_helper')

describe(Store) do
  describe('#shoe') do
    it "tells you the shoes in the store" do
      test_store = Store.create({:name => 'nike'})
      test_shoe = Shoe.create({:name => 'max'})
      test_store.shoe.push(test_shoe)
      expect(test_store.shoe()).to(eq([test_shoe]))
    end
  end
end
