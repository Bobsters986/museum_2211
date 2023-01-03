class Museum
  attr_reader :name,
              :exhibits

  def initialize(name)
    @name = name
    @exhibits = []
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
end