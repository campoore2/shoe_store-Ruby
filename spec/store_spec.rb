require('spec_helper')

describe(Store) do
  describe('#shoe') do
    it "tells you the shoes available" do
      test_store = Store.create({:name => "nike"})
      test_shoe = Shoe.create({:name => "max"})
      test_store.shoes.push(test_shoe)
      expect(test_store.shoes()).to(eq([test_shoe]))
    end
  end

  describe('#cap_letter') do
   it "capitalize's the first letter of each word." do
     test_survey = Store.create({:name => "nike shoes"})
     expect(test_survey.name()).to(eq("Nike Shoes"))
   end
 end
end
