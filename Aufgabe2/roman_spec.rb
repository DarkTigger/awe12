require "roman"

describe Roman do
  describe "input is roman" do
    it "should return an integer" do
      output = Roman.new("IV")
      output.output.class.to_s<=>"Integer".should eq("0")
    end
  end
  describe "input is arabic" do
    it "should return an string" do
       output = Roman.new(4)
       output.output.class.to_s<=>"String".should eq(0) 
    end
  end
end
