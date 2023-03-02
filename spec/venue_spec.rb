require './lib/venue'
require 'rspec'

RSpec.describe Venue do
  describe '#initialize' do
    it 'is a venue' do
      venue = Venue.new('Bluebird', 4)
      expect(venue).to be_a Venue
    end

    it 'shows the capacity' do
      venue = Venue.new('Bluebird', 4)
      expect(venue.capacity).to eq(4)
    end

    it 'has a name' do
      venue = Venue.new('Bluebird', 4)
      expect(venue.name).to eq('Bluebird')
    end

    it 'has an array of patrons' do
      venue = Venue.new('Bluebird', 4)
      expect(venue.patrons).to eq([])
    end
  end

  describe '#add_patrons' do
    it 'returns a list of the patrons' do
      venue = Venue.new('Bluebird', 4)
      venue.add_patron('Mike')
      venue.add_patron('Megan')
      venue.add_patron('Bob')

      expect(venue.patrons).to eq %w[Mike Megan Bob]
    end
  end

  describe '#yell_at_patrons' do
    it 'returns a list of names upcased' do
      venue = Venue.new('Bluebird', 4)
      venue.add_patron('Mike')
      venue.add_patron('Megan')
      venue.add_patron('Bob')
      expect(venue.yell_at_patrons).to eq %w[MIKE MEGAN BOB]
    end
  end

  describe '#over_capacity?' do
    it 'gives a boolean for capactiy' do
      venue = Venue.new('Bluebird', 4)
      venue.add_patron('Mike')
      venue.add_patron('Megan')
      venue.add_patron('Bob')
      expect(venue.over_capacity?).to be(false)
      venue.add_patron('James')
      venue.add_patron('Cat')
      expect(venue.over_capacity?).to be(true)
    end
  end

  describe '#kick_out' do 
    it 'kicks out patrons if over capacity' do 
      venue = Venue.new('Bluebird', 4)
      venue.add_patron('Mike')
      venue.add_patron('Megan')
      venue.add_patron('Bob')
      venue.add_patron('James')
      venue.add_patron('Cat')
      expect(venue.over_capacity?).to be(true) 

      venue.kick_out

      expect(venue.over_capacity?).to be(false) 


    end
  end
end
