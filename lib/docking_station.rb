class DockingStation

  attr_reader :bikes

  def initialize
    @bikes = []
  end

  def release_bike
    fail "No bikes" if @bikes.empty?
  end

  def dock(bike)
    @bikes << bike
  end




end
