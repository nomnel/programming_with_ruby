$LOAD_PATH.push('.')
require '8'

describe "englishNumber" do
  it "returns one to 1" do
    englishNumber(1).should == 'one'
  end
  it "returns ten thosand to 10000" do
    englishNumber(10000).should == 'ten thousand'
  end
  it "returns ten thosand to 1000000000000" do
    englishNumber(1000000000000).should == 'one trillion'
  end
end