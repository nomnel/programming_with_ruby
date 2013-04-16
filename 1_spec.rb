$LOAD_PATH.push('.')
require '1'

describe "hours_per_year" do
  it "should equal 8760" do
    hours_per_year.should == 8760
  end
end

describe "minites_per_year" do
  it "should equal 525600" do
    minites_per_year.should == 525600
  end
end

describe "seconds_per_year" do
  it "should equal 31536000" do
    seconds_per_year.should == 31536000
  end
end

describe "second_age_to_year_age" do
  it "with #{60 * 60 * 24 * 365} should equal 1" do
    second_age_to_year_age(60 * 60 * 24 * 365).should == 1
  end
end