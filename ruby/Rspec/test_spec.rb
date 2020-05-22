require_relative "./test"

describe "Test" do 
  
  describe "test" do 

    let(:test_obj) {Test.new}
    it "responds with 'this is a test function' when invoked" do
      expect(test_obj.test).to eq("This is a test function")
    end 
  end

end
