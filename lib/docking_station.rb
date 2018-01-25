class DockingStation

  attr_reader :bikes

  def initialize
    @bikes = []
  end

  def release_bike
    fail "No bikes" if @bikes.empty?
  end

  def dock(bike)
    fail "Dock full" if @bikes.length > 0
    @bikes << bike
  end




end
