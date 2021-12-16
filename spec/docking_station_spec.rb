require "docking_station"

describe DockingStation do
  
    it {is_expected.to respond_to :release_bike}

    it 'releases working bikes' do
      # bike = subject.release_bike 
      bike = Bike.new
      subject.dock(bike)
      expect(bike).to be_working
    end

    it { is_expected.to respond_to(:dock).with(1).argument }
    it { is_expected.to respond_to(:bike)}

    
    it 'return docked bike' do
      bike = Bike.new
      subject.dock(bike)
      expect(subject.bike).to eq bike
    end
  describe '#release_bike' do
    it 'throws an error when no bikes available' do
      # subject.release_bike
      expect { subject.release_bike } .to raise_error 'No bikes available'
    end
  end

  it 'throws an error when docking station is full' do
    subject.dock(Bike.new)
    expect { subject.dock(Bike.new) } .to raise_error 'Dock full'
  end
end 