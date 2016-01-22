
require 'docking_station'

describe DockingStation do
	it 'responds to "release_bike"' do
		expect(subject).to respond_to :release_bike
	end

	#it 'release working bikes' do
	#	bike = subject.release_bike
	#	expect(bike).to be_working
	#end

    it 'docks something' do
    	bike = Bike.new
    	expect(subject.dock(bike)).to eq bike
    end
    
    it 'raises an error when docking station is at capacity' do
    	expect { subject.dock(Bike.new) }.to raise_error 'At capacity'
    end

    it 'returns docked bikes' do
    	bike = Bike.new
    	subject.dock(bike)
    	expect(subject.bike).to eq bike
    end

      describe '#release_bike' do
      	it 'releases a bike' do
      		bike = Bike.new
      		subject.dock(bike)
      		expect(subject.release_bike).to eq bike
      	end
      end

      describe '#release_bike' do
      	it 'raises an error when there are no bikes available' do
      		expect { subject.release_bike }.to raise_error 'No bikes available'
      	end
      	end

end