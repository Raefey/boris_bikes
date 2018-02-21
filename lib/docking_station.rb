class DockingStation
  def release_bike(number_of_bikes)
    if number_of_bikes == 0
      raise Exception.new("There are no bikes")
    else
    Bike.new
  end


  end

  def dock(bike)
    @bike = bike
  end
  attr_reader :bike
end
