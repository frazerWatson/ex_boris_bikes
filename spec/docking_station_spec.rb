require 'docking_station'

	describe DockingStation do
	
		it { is_expected.to respond_to :release_bike }

		it 'releases working bikes' do
		bike = subject.release_bike
		expect(bike).to be_working
		end

		# docking = DockingStation.new
		# bike = Bike.new

		# it 'responds to dock' do 
		# expect(subject.dock_bike(@bike))
		# end

		# it 'sees a docked bike' do
		# expect(docking.view_bike)
		# end
		# Earlier attemp
		# it 'docks a bike' do 
		# expect(subject).to respond_to(:dock_bike).with(1).argument	
		# end	
		# first let's update our test for #dock
		it 'docks something' do
			bike = Bike.new
			#We want to return the bike we clock
			expect(subject.dock(bike)).to eq bike
		end

		# it  {is_expected.to respond_to(:dock).with(1).argument}

		it {is_expected.to respond_to(:bike)}

		it 'returns docked bikes' do 
			bike = Bike.new
			subject.dock(bike)
			# Again, we need to return we just docked
			expect(subject.bike).to eq bike
		end
	end



# require "bike"
# describe Bike do
# 	it 'gets bike' do
# 	bike = Bike.new
# 	bike.working? 'gets bike'
# 	ene
