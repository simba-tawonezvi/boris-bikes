require_relative "bike"

class DockingStation 
  
  def initialize
    @bikes = []
  end

  def bike
    @bikes.pop
  end

  def release_bike
    raise 'No bikes available' if @bikes.empty?
    @bikes
  end

  def dock(bike)
    fail 'Dock full' if @bikes.count >= 20
    @bikes << bike
  end
end