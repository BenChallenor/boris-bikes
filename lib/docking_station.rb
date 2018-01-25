class DockingStation

  attr_reader :bikes

  def initialize
    @bikes = []
  end

  def release_bike
    fail "No bikes" if @bikes.empty?
    @bikes.pop
  end

  def dock(bike)
    fail "Dock full" if @bikes.length >= 20
    @bikes << bike
  end




end
