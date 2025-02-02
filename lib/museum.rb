require './lib/exhibit'
require './lib/patron'
class Museum
  attr_reader :name, :exhibits

  def initialize(name, exhibits = [])
    @name = name
    @exhibits = exhibits
  end

  def add_exhibit(exhibit)
    @exhibits << exhibit
  end

  def recommend_exhibits(patron)

    recommend = []

    @exhibits.each do |exhibit|
    if exhibit.name.to_s == patron.interests
      recommend << @exhibits[exhibit]

      # binding.pry
    end
    recommend
  end
  end
end
