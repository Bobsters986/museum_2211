class Museum
  attr_reader :name,
              :exhibits,
              :patrons,
              :patrons_by_exhibit_interest

  def initialize(name)
    @name = name
    @exhibits = []
    @patrons = []
  end

  def add_exhibit(new_exhibit)
    @exhibits << new_exhibit
  end

  def recommend_exhibits(patron)
    recommended_array =  patron.interests.map do |interest|
      exhibits.select do |exhibit|
        exhibit.name == interest
      end
    end.flatten!
  end

  def admit(new_patron)
    @patrons << new_patron
  end

  def patrons_by_exhibit_interest
    {
      gems_and_minerals => @patrons if patron.interests.include? gems_and_minerals.name,
      dead_sea_scrolls => @patrons if patron.interests.include? dead_sea_scrolls.name,
      imax => @patrons if patron.interests.include? dead_sea_scrolls.name
    }
  end

end