require 'ship'

describe Ship do
let(:ship){Ship.new}

it "should have a default status of false for sunk" do
	ship.sunk?.should eq false
end

it "should have an instance variable of hits which is 0 by default" do
	ship.hits.should eq 0
end

it "should increase the hits when it hit" do
	ship.hit!
	ship.hits.should eq 1
end

it "should change the status of the ship once the number of hits equal to length" do
	ship.length = 3
	ship.hit!
	ship.hit!
	ship.hit!
	ship.hits.should eq 3
	ship.should be_sunk
end

it "should have its location set by default" do
	ship.location_set?.should be_false
end

it "should have a location which is empty by default" do
	ship.location.should be_empty
end

it "should have return true for set_location once a location has been set" do
	ship.set_location!(["A1", "A2"])
	ship.location_set?.should be_true
end


end