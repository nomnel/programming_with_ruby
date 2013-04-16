$LOAD_PATH.push('.')
require '10'

describe "grandfathersClock" do
  it "should repeats 12 times if it is noon" do
    Time.stub!(:now).and_return(Time.new(2013, 04, 16, 12, 0, 0, "+09:00"))
    i = 0
    grandfathersClock{i+=1}.should == 12
  end
end