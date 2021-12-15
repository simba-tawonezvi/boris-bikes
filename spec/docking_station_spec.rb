require "dockingStation"

describe DockingStation do
  describe "respond to" do
  it {is_expected.to respond_to :release_bike}
  end 

  it 'releases working bikes' do
    bike = subject.release_bike 
    expect(bike).to be_working
  end

  it { is_expected.to respond_to(:dock).with(1).argument }
  it { is_expected.to respond_to(:bike)}

  it 'return docked bike' do
    bike = Bike.new
    subject.dock(bike)
    expect(subject.bike).to eq bike
  end
end 