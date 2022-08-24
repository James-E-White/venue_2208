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
     #starting an array
     #need to return a new array with capitalized names
     patron_caps = []
     @patrons.each do |patron|
       patron_caps << patron.upcase
      #yell_at_patrons = patron.upcase
      #or
      #@patrons.map dp |patron|
      #patron.upcase
    end
    patron_caps
   end
 end

    def over_capacity?
    if @patrons.length <= @capacity 
      false
    else
      true
    end

  end
