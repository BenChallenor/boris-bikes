class DockingStation

  attr_reader :bikes

  def initialize
    @bikes = []
  end

  def release_bike
    Bike.new
  end

  def dock(bike)
    @bikes << bike
  end

  def has_bikes?
    if @bikes.empty?
      false
    else
      true
    end
  end

end
