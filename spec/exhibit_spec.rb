require 'rspec'
require './lib/exhibit'
require './lib/patron'

RSpec.describe Exhibit do
  let(:exhibit) { Exhibit.new({name: "Gems and Minerals", cost: 0}) }
  let(:patron_1) { Patron.new("Bob", 20) }

  describe "#initialize exhibit" do
    it "exists" do
      expect(exhibit).to be_an_instance_of(Exhibit)
    end

    it "has attributes" do
      expect(exhibit.name).to eq("Gems and Minerals")
      expect(exhibit.cost).to eq(0)
    end
  end

  describe "#initialize patron" do
    it "exists" do
      expect(patron_1).to be_an_instance_of(Patron)
    end

    it "has attributes" do
      expect(patron_1.name).to eq("Bob")
      expect(patron_1.spending_money).to eq(20)
      expect(patron_1.interests).to eq([])
    end
  end


end
