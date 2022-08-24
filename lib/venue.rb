class Venue
  attr_reader :name,
              :capacity,
              :patrons,
              :yell_at_patrons

  def initialize(name, capacity)
    @name = name
    @capacity = capacity
    @patrons = []
    @yell_at_patrons = []
  end

   def add_patron(patron)
     @patrons << patron
   end

   def yell_at_patrons
     patrons.each do |patron|
      yells_at_patrons = patron.upcase
         end
     return yells_at_patrons
end

    def over_capacity?
    if patrons.length >= 4

   end

  end
 end
