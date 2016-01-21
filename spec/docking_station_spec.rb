require "docking_station"
describe DockingStation  do
	it { is_expected.to respond_to :release_bike }
end

require "bike"
describe Bike do
	it 'gets bike' do
	bike = Bike.new
	bike.working? 'gets bike'
	end
end