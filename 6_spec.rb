$LOAD_PATH.push('.')
require '6'

describe "pluralize" do
  it "should pluralize if n = 2" do
    pluralize(2, 'bottle').should == 'bottles'
  end
  it "should not pluralize if n = 1" do
    pluralize(1, 'bottle').should == 'bottle'
  end
  it "should pluralize if n = 0" do
    pluralize(0, 'bottle').should == 'bottles'
  end
end

describe "gramma" do
  it "should return false if I say 'BYE'" do
    ARGF.stub!(:gets).and_return('BYE')
    gramma().should be_false
  end
  it "should return true if I say something except 'BYE'" do
    ARGF.stub!(:gets).and_return('bye')
    gramma().should be_true
  end
end

describe "leap_year?" do
  it "should return false if year = 1999" do
    leap_year?(1999).should be_false
  end
  it "should return true if year = 2000" do
    leap_year?(2000).should be_true
  end
  it "should return false if year = 1900" do
    leap_year?(1900).should be_false
  end
end