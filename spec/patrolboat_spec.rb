require 'PatrolBoat'

describe PatrolBoat do
let(:patrolboat){PatrolBoat.new}

	it "should have a length of 4" do
		patrolboat.length.should eq 2
	end

	it "should sink if it takes 2 hits" do
		patrolboat.hit!
		patrolboat.hit!
		patrolboat.should be_sunk
	end

end