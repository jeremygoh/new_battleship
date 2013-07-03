require "aircraftcarrier"

describe AircraftCarrier do
let(:aircraftcarrier){AircraftCarrier.new}

it "should have a length of 5" do
	aircraftcarrier.length.should eq 5
end

end