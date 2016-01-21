require_relative 'bike'
#require needs you to have a full path name,
#relative allows you to do a 
class DockingStation
	
	attr_reader :dock_bike

  def release_bike
 	 Bike.new
  end

  def dock_bike(bike)
  	@dock_bike = bike
  end

  def view_bike
  	@dock_bike
  end

end