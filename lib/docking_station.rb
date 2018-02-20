class DockingStation
  def release_bike
  end
end
docking_station = DockingStation.new
docking_station.release_bike
class Bike
  def working?
    puts "its working"
  end
end
current_bike = Bike.new
current_bike.working?
