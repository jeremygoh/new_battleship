require 'destroyer'

describe Destroyer do

it "should have a length of 3" do
Destroyer.new.length.should eq 3
end

it "should have no location" do
Destroyer.new.location.should be_empty
end

end