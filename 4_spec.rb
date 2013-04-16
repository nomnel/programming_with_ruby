$LOAD_PATH.push('.')
require '4'

describe "full_name" do
  it "should equal first + ' ' + last" do
    ARGF.stub!(:gets).and_return('Name')
    full_name().should == 'Name Name'
  end
end

describe "better_number" do
  it "should equal arg + 1" do
    ARGF.stub!(:gets).and_return('3')
    better_number().should == 4
  end
end