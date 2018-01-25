require "docking_station"
describe DockingStation do

  it "returns DockingStation to respond to the method release_bike" do
  expect(subject).to respond_to(:release_bike)
  end

  it "releases working bike" do
    docking_station = DockingStation.new
    expect(docking_station.release_bike).to be_working
  end

  it "docks a bike" do
    docking_station = DockingStation.new
    bike = Bike.new
    expect(docking_station.dock(bike)).to include bike
  end

  it "sees if a bike is docked" do
    docking_station = DockingStation.new
    bike = Bike.new
    expect(docking_station.bikes).to be_empty
  end


  it "gives an error when dock empty" do
    bike = Bike.new
    @bikes = []
    expect { subject.release_bike}.to raise_error "No bikes"
  end

  it "gives an error when dock is full" do
    20.times { docking_station.dock Bike.new }
    expect {  subject.dock(Bike.new)}.to raise_error "Dock full"
  end

  
  end
