require_relative 'bike'
#require needs you to have a full path name,
#relative allows you to do a 
class DockingStation

	attr_reader :bike

  def release_bike
    fail "No bikes available" unless @bike
 	@bike
  end

  def dock(bike)
  	@bike = bike
  end

  # def bike
  # @bike
  # end

end