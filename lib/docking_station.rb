class DockingStation
  attr_reader :array_of_bikes, :stored_bike

  DEFAULT_CAPACITY = 20

  def initialize
    @array_of_bikes = []
    20.times{@array_of_bikes << Bike.new}
  end

  private
  def empty?
    if @array_of_bikes.length == 0
      true
    else
      false
    end
  end

  public
  def release_bike
    if empty?
      raise Exception.new("There are no bikes")
    else
      @array_of_bikes.pop
      Bike.new
    end
  end

  private
  def full?
    if @array_of_bikes.length == DEFAULT_CAPACITY
      true
    else
      false
    end
  end

  public
  def return_bike
    if full?
      raise Exception.new("There is no space")
    else
      Bike.new >> @array_of_bikes
    end
  end

  def dock(bike)
    @stored_bike = bike
  end

end

class Bike
  def working?
    true
  end
end
